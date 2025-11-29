---
geekdocAnchor: false
title: Feb 2024 - Reimplementing the Topics API classifier
date: 2024-02-01
type: posts
tags:
  - Datasets & Software
weight: 1
---

{{< hint type=note >}}
- **Author:** Yohan Beugin (post also published [on my website](https://yohan.beugin.org/posts/2024_02_topics_api_web_classifier.html))
- **GitHub repository:** [https://github.com/yohhaan/topics_classifier](https://github.com/yohhaan/topics_classifier)

{{</hint>}}

In this post, we discuss our research needs to reimplement the Topics API for the web and so, explain how the classification in Chrome is actually performed by presenting all pre- and post-processing steps used by Google. We also point at a formatting issue that we found along the way that impacts the intended accuracy of the API classification for some domains.

## Research needs

As part of our research ([SecWeb'24](https://doi.org/10.48550/arXiv.2403.19577) and [PETS'24](https://doi.org/10.56553/popets-2024-0004)) on the privacy and utility guarantees of the Topics API for the web, we need to classify thousands of different inputs with the Topics API.

If the internal page `chrome://topics-internals/` on Chrome does let you use the classifier implemented by Google, it is only useful for a few domains in practice and does not meet our needs when scaling up. Not to mention the impossibility to access the raw classification results and/or bypass the pre- and post-filtering steps of the machine learning model (all useful for more detailed analyses of the API).

Google engineers also released [a demo](https://gist.github.com/yohhaan/9a16a64295da2081976720c6aab1b88f) of the model execution for the web API. While this demonstrates how to extract the override list from the protobuf file and run some inferences on the Tensorflow Lite model --both respectively shipped with Chrome-- this Jupyter notebook does not cover all the pre- and post-processing steps applied in the classification deployed in Chrome. This can easily be verified by checking that the classification results of the demo disagree with the ones from Chrome's internal page.

Only one path forward remains: it is time to dive into Chromium source code, find Google's implementation of the Topics API, and reimplement it in a way that suit our needs.


## The classifier of the Topics API for the web
### Overview
With the Topics API, web users' behaviors are classified into topics of interest from a fixed taxonomy of topics. This is done in 2 steps; first the websites visited by users during each epoch are classified by the API into topics, and then only the top topics of that epoch for each user get saved to be returned to advertisers. In this post, we focus on the first part: the classification of websites into topics (top section of the figure).

The FQDNs of visited websites are pre-processed and checked against a list of domains mapped to topics that was annotated by Google. If it is not present in that override list, the domain is classified by an ML model whose output gets filtered before the final mapping gets returned.

### Pre-processing and override list (static mapping)
The Topics API for the web considers that its input is composed of FQDNs, the pre-processing that is applied, first removes any `"www."`prefix if present in the domain to classify, and then replaces the following characters `"-", "_", ".", "+"` by a whitespace. This pre-processed domain is then checked against the override list to see if its mapping is known. Otherwise, the ML model is executed to infer its topics.

<figure class="figure">
<img src="../topics-classifier-overview.png" width="50%" class="figure-img img-fluid rounded"
alt="The figure summarizes how the Topics API works. It depicts how at the end of an epoch, the calculation of the top topics of a user is done by considering the browsing history in that epoch and classify each visited hostnames into a topic from the taxonomy by using the static mapping and machine learning model released by Google. The figure then illustrates how a call to the Topics API by an advertiser embedded on a website determines the array of 3 topics that is returned; with some probability p, a random topic is drawn uniformly from the taxonomy, and with the opposite probability 1-p, it is picked from the top topics of the user for the corresponding epoch. It also shows that the returned array is randomly shuffled.">
<figcaption class="figure-caption">Overview of the Topics API for the web from <a href="https://doi.org/10.56553/popets-2024-0004">PETS'24</a>
</figcaption>
</figure>

### Post filtering of the ML model

The ML model outputs as many confidence scores as there are topics in the corresponding taxonomy; i.e., 1 score for each topic. As of February 2024, these scores are filtered the following way (see algorithm also):

- the top 5 scores ordered by their confidence scores are kept
- the sum of these 5 scores is computed and any topic with a score lower than 0.01 is discarded
- if the `"unknown"` topics is still present and if its score contributes to more than 80% to the previous sum of 5 scores, then only the `"unknown"` topic is returned
- if the contribution is lower, the `"unknown"` topic is discarded and the remaining scores are normalized by the total sum previously computed
- any topic with a normalized score higher than 0.25 is output
- if after all these steps, no topic was output at all, the `"unknown"` topic is returned

<figure class="figure">
<img src="../topics-classifier-filtering.png" class="figure-img img-fluid rounded" width="50%"
alt="Filtering applied to the output of the ML model of the
Topics API">
<figcaption class="figure-caption">Filtering applied to the
output of the ML model of the Topics API for the web from <a href="https://doi.org/10.56553/popets-2024-0004">PETS'24</a>
</figcaption>
</figure>

### Reimplementation
My exact reimplementation can be found here: [https://github.com/yohhaan/topics_classifier](https://github.com/yohhaan/topics_classifier)


```
usage: python3 classify.py [-h] -mv {chrome1,chrome4,chrome5,android1,android2} -ct {topics-api,model-only,raw-model} -i INPUTS [INPUTS ...] [-id [INPUTS_DESCRIPTION ...]] [-ohr]

Reimplementations of the Topics API

options:
  -h, --help            show this help message and exit
  -id [INPUTS_DESCRIPTION ...], --inputs_description [INPUTS_DESCRIPTION ...]
                        additional input description(s) (for android classification)
  -ohr, --output_human_readable
                        make output human readable, does not work with --classification-type raw-model

required optional arguments:
  -mv {chrome1,chrome4,chrome5,android1,android2}, --model_version {chrome1,chrome4,chrome5,android1,android2}
                        model version to use
  -ct {topics-api,model-only,raw-model}, -classification_type {topics-api,model-only,raw-model}
                        type of classification: either run the full Topics classification (override+model+filtering), the model only (model+filtering), or get the raw classification by the model
  -i INPUTS [INPUTS ...], --inputs INPUTS [INPUTS ...]
                        input(s) to classify
```
## Formatting issue in the override list

Google ships with Chrome an override list, which is a mapping manually annotated by Google of domains to their corresponding topics. When a domain is being classified by the Topics API, it is checked against that list first and if not found classified by the ML model.

The override list shipped in Chrome with the 4th version of the Topics model contains 47 128 such individual mappings from domains to topics. However, it appears that 625 of them are not formatted correctly as they contain the `"/"` invalid character (according to the pre-processing rules applied to the input) and are flipped around that invalid character. As a result, when trying to classify the corresponding initial domain by applying the pre-processing to the input domain, no match is found in the override list. Thus, the ML model is used for the classification and different results than the manual annotations are output.

Let's illustrate this with a few examples:

<div>
<table class="table table-striped table-bordered table-sm table-responsive">
<caption>Examples of invalid domain inputs in override list v4</caption>
<thead>
<tr>
<th scope="col">Input domain</th>
<th scope="col">Pre-processed domain</th>
<th scope="col">Chrome classification (calling the ML model)</th>
<th scope="col">Override list entry (note the `/` invalid character)</th>
</tr>
</thead>
<tbody>
<tr>
<td scope="row"><em>candy-crush-soda-saga.web.app</em></td>
<td><em>candy crush soda saga web app</em></td>
<td>183 Computer & video games<br>
186 Casual games<br>
1 Arts & entertainment
</td>
<td><em>web app`/`candy crush soda saga</em><br>
186 Casual games<br>
215 Internet & telecom
</td>
</tr>
<tr>
<td scope="row"><em>subscribe.free.fr</em>
</td>
<td><em>subscribe free fr</em></td>
<td>217 Internet service providers (ISPs)</td>
<td><em>free fr`/`subscribe </em> <br>
217 Internet service providers (ISPs)<br>
365 Movie & TV streaming<br>
129 Consumer electronics<br>
218 Phone service providers</td>
</tr>
<tr>
<td scope="row"><em>uk.instructure.com</em></td>
<td><em>uk instructure com</em></td>
<td>229 Colleges & universities<br>
227 Education</td>
<td><em>instructure com`/`uk </em><br>
230 Distance learning<br>
234 Standardized & admissions tests<br>
140 Software<br>
227 Education<br>
229 Colleges & universities
</td>
</tr>
</tbody>
</table>
</div>

The list of 625 domains with an incorrect character is available [here](https://gist.github.com/yohhaan/71f825ed78d0ec8b6c48e5a90e8b96a3). You can reproduce that list following [these instructions](https://gist.github.com/yohhaan/629ca776c9eef01116fe6e637a6630f0).

Bug reported [here](https://issues.chromium.org/issues/325123734) and [there](https://github.com/patcg-individual-drafts/topics/issues/306).

---
geekdocAnchor: false
title: CoNEXT 2024 Paper
weight: 23
---

{{< hint type=note >}}
A [journal version](https://doi.org/10.1109/TP.2025.3615120) of this work was published in IEEE Transactions on Privacy in 2025.
{{< /hint >}}

**Title:** [A First View of Topics API Usage in the Wild](https://dl.acm.org/doi/10.1145/3680121.3697810)

**Authors:** Alberto Verna (Politecnico di Torino), Nikhil Jha (Politecnico di Torino), Martino Trevisan (University of Trieste), Marco Mellia (Politecnico di Torino)

**Abstract/Summary:** Among several proposals for a privacy-preserving replacement of third-party cookies, Google's new Topics API is widely discussed as a possible solution. Some scepticism still lingers on the new paradigm from researchers and control bodies; however, the industry has started deploying and testing it. This paper measures the current usage of the Topics API in the wild, discovering third parties that started enabling it, the practices they adopt and their interplay with privacy policies and consent acquisition mechanisms.
To do so, we deploy a crawler to record the usage of Topics API on the most popular 50,000 websites worldwide. We observe that this technology starts to get a foothold - with 47 popular ad-related third parties that are testing it to understand the opportunities it offers.
We notably observe typical problems of early deployments: privacy regulation violations, unexpected solutions that allow one to circumvent abuse protection, and deployment errors.

**Other:**
- [Artifact link](https://github.com/Novant8/priv-accept-topics)
- [Web Tool](https://smartdata.polito.it/is-this-site-calling-the-topics-api/)
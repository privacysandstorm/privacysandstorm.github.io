---
geekdocAnchor: false
title: SecWeb 2024 Paper
weight: 21
---

**Title:** [A Public and Reproducible Assessment of the Topics API on Real Data](https://doi.org/10.48550/arXiv.2403.19577)

**Authors:** Yohan Beugin (University of Wisconsin–Madison), Patrick McDaniel (University of Wisconsin–Madison)

**Abstract/Summary:** The Topics API for the web is Google's privacy-enhancing alternative to replace third-party cookies. Results of prior work have led to an ongoing discussion between Google and research communities about the capability of Topics to trade off both utility and privacy. The central point of contention is largely around the realism of the datasets used in these analyses and their reproducibility; researchers using data collected on a small sample of users or generating synthetic datasets, while Google's results are inferred from a private dataset. In this paper, we complement prior research by performing a reproducible assessment of the latest version of the Topics API on the largest and publicly available dataset of real browsing histories. First, we measure how unique and stable real users' interests are over time. Then, we evaluate if Topics can be used to fingerprint the users from these real browsing traces by adapting methodologies from prior privacy studies. Finally, we call on web actors to perform and enable reproducible evaluations by releasing anonymized distributions. We find that for the 1207 real users in this dataset, the probability of being re-identified across websites is of 2%, 3%, and 4% after 1, 2, and 3 observations of their topics by advertisers, respectively. This paper shows on real data that Topics does not provide the same privacy guarantees to all users and that the information leakage worsens over time, further highlighting the need for public and reproducible evaluations of the claims made by new web proposals.

**Other:**
- [Artifact link](https://github.com/yohhaan/topics_api_analysis)
- [Topics Classifier Reimplemented](https://github.com/yohhaan/topics_classifier)
- [Poster](https://yohan.beugin.org/files/posters/2024_topics_pets_secweb.pdf)
- [Slides](https://yohan.beugin.org/files/slides/SecWeb_2024.pdf)
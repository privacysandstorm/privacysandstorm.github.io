---
geekdocAnchor: false
title: Google PETS 2024 Paper 1
weight: 40
---

**Title:** [Summary Reports Optimization in the Privacy Sandbox Attribution Reporting API](https://doi.org/10.56553/popets-2024-0132)

**Authors:** Hidayet Aksu (Google), Badih Ghazi (Google), Pritish Kamath (Google), Ravi Kumar (Google), Pasin Manurangsi (Google), Adam Sealfon (Google), Avinash V. Varadarajan (Google)

**Abstract/Summary:** The Privacy Sandbox Attribution Reporting API has been recently deployed by Google Chrome to support the basic advertising functionality of attribution reporting (aka conversion measurement) after deprecation of third-party cookies. The API implements a collection of privacy-enhancing guardrails including contribution bounding and noise injection. It also offers flexibility for the analyst to allocate the contribution budget. In this work, we present algorithms for optimizing the allocation of the contribution budget for summary reports from the Attribution Reporting API. We develop a synthetic data model that we find to accurately capture real-world conversion data, and extensively evaluate our method on two real-world datasets and two synthetic datasets. We show that optimizing the parameters that can be set by the analyst can significantly improve the utility achieved by querying the API while satisfying the same privacy bounds.

**Other:**
- [Artifact link](https://github.com/google-research/google-research/tree/master/ara_optimization)
- [Blog post](https://research.google/blog/summary-report-optimization-in-the-privacy-sandbox-attribution-reporting-api/)
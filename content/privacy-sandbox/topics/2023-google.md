---
geekdocAnchor: false
title: Google 2023 Paper
weight: 13
---

{{< hint type=note >}}
This paper appeared to have been submitted several times in somewhat slightly different versions to diverse venues in 2023 such as: [SecWeb'23](https://secweb.work/2023.html#program), [SIGMOD'23](https://doi.org/10.1145/3589294), [RegML at NeurIPS'](https://neurips.cc/virtual/2023/80616), we decided to link below to the [arXiv version](https://arxiv.org/abs/2304.07210).
{{</hint>}}

**Title:** [Measuring Re-identification Risk](https://arxiv.org/abs/2304.07210)

**Authors:**  Cj Carey (Google), Travis Dick (Google), Alessandro Epasto (Google), Adel Javanmard (USC and Google), Josh Karlin (Google), Shankar Kumar (Google), Andrés Muñoz Medina (Google), Vahab Seyed Mirrokni (Google), Gabriel H. Nunes (UFMG and Google), Sergei Vassilvitskii (Google), Peilin Zhong (Google)

**Abstract/Summary:** Compact user representations (such as embeddings) form the backbone of personalization services. In this work, we present a new theoretical framework to measure re-identification risk in such user representations. Our framework, based on hypothesis testing, formally bounds the probability that an attacker may be able to obtain the identity of a user from their representation. As an application, we show how our framework is general enough to model important real-world applications such as the Chrome's Topics API for interest-based advertising. We complement our theoretical bounds by showing provably good attack algorithms for re-identification that we use to estimate the re-identification risk in the Topics API. We believe this work provides a rigorous and interpretable notion of re-identification risk and a framework to measure it that can be used to inform real-world applications.

{{< hint type=important title="Remarks" >}}

From our <a href="https://doi.org/10.48550/arXiv.2403.19577">SecWeb'24</a> paper:

``*Google released two privacy analyses of the fingerprinting risk of the Topics API; [a white paper](../2022-google-white-paper/) computing the aggregate information leakage per API call and for two consecutive calls and a second work using a theoretical framework to measure re-identification risk. However, the empirical measurements in both works have been performed on a private dataset, preventing the verification of the claims being made. Similarly, only aggregate and final results are reported, the lack of details across the distribution of users can hide the privacy risks of Topics for specific users as already pointed out [by Thomson](../2023-mozilla/). Additionally, Google’s second analysis assumes and infers from an aggregate statistic that “for every user, samples of top sets [of topics] are independent across time”, while prior web measurement studies have found that users’ interests exhibit some stability over time.*''
{{</hint>}}
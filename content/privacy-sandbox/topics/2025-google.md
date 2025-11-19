---
geekdocAnchor: false
title: Google 2025 Paper
weight: 30
---

**Title:** [Differentially Private Synthetic Data Release for Topics API Outputs](https://doi.org/10.1145/3711896.3737391)

**Authors:** Travis Dick (Google), Alessandro Epasto (Google), Adel Javanmard (USC & Google), Josh Karlin (Google), Andrés Muñoz Medina (Google), Vahab Seyed Mirrokni (Google), Sergei Vassilvitskii (Google), Peilin Zhong (Google)

**Abstract/Summary:** The analysis of the privacy properties of Privacy-Preserving Ads APIs is an area of research that has received strong interest from academics, industry, and regulators. Despite this interest, the empirical study of these methods is severely hindered by the lack of publicly available data. Reliable empirical analysis of the privacy properties of an API, in fact, requires access to a dataset consisting of realistic API outputs for a large collection of users; however, privacy concerns prevent the general release of such data to the public. In this work, we address this problem by developing a novel methodology to construct synthetic API outputs that are simultaneously realistic enough to enable accurate study and provide strong privacy protections. We focus on one of the Privacy-Preserving Ads APIs: the Topics API, part of Google Chrome's Privacy Sandbox, which enables interest-based advertising without relying on third-party cookies. We developed a methodology to generate a differentially-private dataset that closely matches the re-identification risk properties of the real Topics API data. The use of differential privacy provides strong theoretical bounds on the leakage of private user information from this release. Our methodology is based on first computing a large number of differentially-private statistics describing how output API traces evolve over time. Then, we design a parameterized distribution over sequences of API traces and optimize its parameters so that they closely match the statistics obtained. Finally, we create the synthetic data by drawing from this distribution. Our work is complemented by an open-source release of the anonymized dataset obtained by this methodology. We hope this will enable external researchers to analyze the API in-depth and replicate prior and future work on a realistic large-scale dataset. We believe that this work will contribute to fostering transparency regarding the privacy properties of Privacy-Preserving Ads APIs.

**Other:**
- [Artifact link](https://www.kaggle.com/datasets/googleai/topics-api-private-data-release/)
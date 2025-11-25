---
geekdocAnchor: false
title: B.S. Thesis 2025 
weight: 50
---

**Title:** [Investigating High Entropy Client Hint usage in HTTP/2 and HTTP/3](https://www.cs.ru.nl/bachelors-theses/2025/Sarp_Ilgaz___1093588___Investigating_High_Entropy_Client_Hint_usage_in_HTTP-2_and_HTTP-3.pdf)


**Authors:** Sarp Ilgaz (Radboud University), Güneş Acar (Radboud University), Bram Westerbaan (Radboud University)

**Abstract/Summary:** This thesis investigates the techniques used for high-entropy Client Hint collection in HTTP/2 and HTTP/3, evaluates their prevalence across the top 100,000 websites, and examines the resulting privacy implications. Client Hints—introduced by Google engineers in 2013 as a more privacy-focused alternative to User-Agent headers—can be classified into low- and high- entropy categories, where high-entropy hints may reveal device-specific in- formation useful for fingerprinting. Although previous studies measured Header-based Client Hint requests, they could not capture more advanced collection mechanisms operating during the TLS handshake. To address this gap, a custom crawler was implemented, deployed from both Amsterdam and New York. Results indicate that 15.9% of successful visits from Amsterdam and 24.2% from New York encountered at least one Client Hint opt-in, with ALPS-based collection (almost entirely driven by Google-owned domains) accounting for the majority of these requests. In contrast, traditional HTTP Header-based opt-ins remained relatively low (3.0 % NL, 3.7 % US). Despite explicit server requests, only 5.5 % (NL) and 5.7 % (US) of visits actually transmitted Client Hints. Comparative analysis with recent literature reveals more than ten-fold increases in overall adoption rates and five-fold increases in Hint transmissions since 2023. The study highlights that, although Client Hints originally aimed to reduce passive fingerprinting, advanced network-layer techniques contradict this goal by rendering fingerprinting requests largely invisible to standard browser tools. By map- ping which entities request specific hints and exposing the dominance of ALPS, particularly within Google’s extensive web ecosystem, this research contributes to a more complete understanding of modern fingerprinting vectors and informs future browser privacy safeguards and web standard developments.

**Other:**
- [Artifact link](https://github.com/sarpilgaz/client-hint-crawler)
- [Dataset](https://zenodo.org/records/15591319)
---
geekdocAnchor: false
title: Meta/Mozilla 2023 Paper
weight: 30
---

**Title:** [Interoperable Private Attribution: A Distributed Attribution and Aggregation Protocol](https://eprint.iacr.org/2023/437)

**Authors:** Benjamin Case (Meta), Richa Jain (Meta), Alex Koshelev (Meta), Andy Leiserson, MozillaDaniel Masny (Meta), Thurston Sandberg (Meta), Ben Savage (Meta), Erik Taubeneck (Meta), Martin Thomson (Mozilla), Taiki Yamaguchi (Meta)

**Abstract/Summary:** Measuring people’s interactions that span multiple websites can provide unique insight that enables better products and improves people’s experiences, but directly observing people’s individual journeys creates privacy risks that conflict with the newly emerging privacy model for the web. We propose a protocol that uses the combination of multi-party computation and differential privacy that enables the processing of peoples’ data such that only aggregate measurements are revealed, strictly limiting the information leakage about individual people. Our primary application of this protocol is measuring, in aggregate, the effectiveness of digital advertising without enabling cross-site tracking of individuals. In this paper we formalize our protocol, Interoperable Private Attribution (IPA), and analyze its security. IPA is proposed in the W3C’s Private Advertising Technology Community Group (PATCG) [8]. We have implemented our protocol in the malicious honest majority MPC setting for three parties where network costs dominate compute costs. For processing a query with 1M records it uses around 18GB of network which at $0.08 per GB leads to a network cost of $1.44.

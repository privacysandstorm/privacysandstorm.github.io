---
geekdocAnchor: false
title: Mozilla 2021 Analysis
weight: 10
---

**Title:** [Technical Comments on Privacy Budget](https://mozilla.github.io/ppa-docs/privacy-budget.pdf)

**Authors:** Eric Rescorla (Mozilla)

**Abstract/Summary:** Google’s Privacy Budget is a proposal to restrict fingerprinting by measuring the amount of information consumed by sites and blocking access to information-containing features when a certain limit has been exceeded. Our analysis identifies a number of potential issues with the proposal that call its practicality into question. In particular, it seems hard to practically estimate the amount of information leaked by particular surfaces and even harder to estimate the amount of information leaked by a particular combination of surfaces which may be correlated, uncorrelated, or anything in between. Deployment of the Privacy Budget proposal seems likely to cause unpredictable breakage of Websites which find themselves exceeding the information limit, often due to actions outside their direct control, as in the case with third party scripts they have loaded. Finally, the blocking mechanism itself may be usable as a tracking mechanism by exhausting the budget in a distinct pattern for each client. We believe a better approach is to (1) limit the amount of fingerprinting surface exposed by new Web platform features (2) gradually remove fingerprinting surfaces — especially passive fingerprinting services — from existing features and (3) detect individual abusive patterns and block the sites responsible.

**Other:** [Blog post](https://blog.mozilla.org/en/mozilla/google-privacy-budget-analysis/)
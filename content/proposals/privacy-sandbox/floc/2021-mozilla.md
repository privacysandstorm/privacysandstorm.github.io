---
title: Mozilla Analysis
weight: 20
---

**Title:** [Technical Comments on FLoC Privacy](https://mozilla.github.io/ppa-docs/floc_report.pdf)

**Authors:** Eric Rescorla (Mozilla), Martin Thomson (Mozilla)


**Abstract:** FLoC is a proposed replacement for “cross-site” cookies that is intended to allow for interest-based ad targeting while bounding the amount of information available to observers. We analyze the current proposal against this objective and find a number of privacy issues: When considered as replacing existing state-based cross-site tracking mechanisms such as cookies, FLoC still allows for significant linkage of user behavior, both via measuring the longitudinal evolution of cohort IDs as proposed by Wilander and in combination with existing partial identifiers such as IP address, geolocation and browser fingerprinting. In particular, it may be possible to identify individual users by using both FLoC IDs and relatively weak fingerprinting vectors. When considered as coexisting with existing state-based tracking mechanisms, FLoC has the potential to significantly increase the power of cross-site tracking. In particular, in cases where cross-site tracking is prevented by partitioned storage, the longitudinal pattern of FLoC IDs might allow an observer to re-synchronize visits by the same user across multiple sites, thus partially obviating the value of these defenses. It is unclear if it is possible to address these issues within the general structure of FLoC; we include some ideas for improvements and explore their shortcomings.

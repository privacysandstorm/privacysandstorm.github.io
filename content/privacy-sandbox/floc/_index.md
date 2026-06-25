---
geekdocAnchor: false
title: FLoC API
geekdocCollapseSection: true
weight: 100
customCitesFull:
 - ravichandranEvaluationCohortAlgorithms2020
 - snyderWhyBraveDisables2021
 - cyphersGooglesFLoCTerrible2021
 - epastoClusteringPrivateInterestbased2021
 - rescorlaTechnicalCommentsFLoC2021
 - berkePrivacyLimitationsInterestbased2022
 - kessibiComplementaryUtilityPrivacy2022
 - turatiLocalitySensitiveHashingDoes2023
---

{{< hint type=warning >}}
This API is deprecated.
{{</hint>}}

## Overview

Federated Learning of Cohorts (FLoC) was a proposal from Google to deprecate *third-party cookies* and *reduce cross-site tracking* while still *enabling interest-based advertising*. Google claimed that users could not be fingerprinted through FLoC because “thousands of users” would share the same cohort (*k-anonymity*).

## How does it work?

With FLoC, every week web browsers assign users to an interest group (or cohort) by computing a locality-sensitive hash (LSH) on users’ browsing histories. The computed cohort is reported to a central server (controlled by Google for Chrome’s initial implementation) that enforces k-anonymity by either (a) checking that the corresponding cohort is composed of enough users, or (b) merging the cohort with other cohorts until this is satisfied. Advertisers embedded on websites can observe the cohort IDs of the visiting users by calling the FLoC API.

- **API call:** `document.interestCohort()`
- [Documentation](https://privacysandbox.com/floc/)
- [Explainer](https://github.com/WICG/floc)

{{< hint type=important title="Remarks" >}}
From our <a href="https://doi.org/10.56553/popets-2024-0004">PETS'24</a> paper:

*``Independent analyses of FLoC revealed a variety of privacy concerns: (1) requirement in trusting a single actor to maintain adequate k-anonymity, (2) concern that cohort IDs could create or be linked to fingerprinting techniques, (3) risk of re-identifying users by tracking their cohort IDs over time and by isolating them into specific cohorts through Sybil attacks. Finally, while some parameters and details of FLoC were still unclear, advertisers also had concerns about how to interpret the cohort ID for utility. Google eventually dropped FLoC for the [Topics API](https://privacysandstorm.com/privacy-sandbox/topics).''*
{{</hint>}}

## Analyses

{{< toc-tree >}}
---
title: FLoC API
geekdocCollapseSection: true
weight: 100
---

{{< hint type=important >}}
This API is deprecated.
{{< /hint >}}

## Overview

Federated Learning of Cohorts (FLoC) was a proposal from Google to deprecate *third-party cookies* and *reduce cross-site tracking* while still *enabling interest-based advertising*. Google claimed that users could not be fingerprinted through FLoC because “thousands of users” would share the same cohort (*k-anonymity*).

## How does it work?

With FLoC, every week web browsers assign users to an interest group (or cohort) by computing a locality-sensitive hash (LSH) on users’ browsing histories. The computed cohort is reported to a central server (controlled by Google for Chrome’s initial implementation) that enforces k-anonymity by either (a) checking that the corresponding cohort is composed of enough users, or (b) merging the cohort with other cohorts until this is satisfied. Advertisers embedded on websites can observe the cohort IDs of the visiting users by calling the FLoC API.

## API

- **API call:** `document.interestCohort()`
- [Documentation](https://privacysandbox.com/proposals/floc/)
- [Explainer](https://github.com/WICG/floc)

## Remarks

Analyses of FLoC revealed a variety of privacy concerns:
1. Requirement in trusting a single actor to maintain adequate k-anonymity.
2. Concern that cohort IDs could create or be linked to fingerprinting techniques.
3. Risk of re-identifying users by tracking their cohort IDs over time and by isolating them into specific cohorts through Sybil attacks.

Finally, while some parameters and details of FLoC were still unclear, advertisers also had concerns about how to interpret the cohort ID for utility. Google eventually dropped FLoC for the [Topics API](/proposals/privacy-sandbox/topics).

## Analyses

{{< toc-tree >}}
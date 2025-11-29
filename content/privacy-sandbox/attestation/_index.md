---
geekdocAnchor: false
title: Attestation/Enrollment
geekdocCollapseSection: true
weight: 100
customCites:
  - beuginWebAlmanacCookies2024
---

{{< hint type=warning >}}
Similar to the APIs, the attestation mechanism is likely being deprecated, see the [official announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) from Google.
{{</hint>}}

## Overview

In order to use some of the Privacy Sandbox APIs, API callers have to go through an [enrollment](https://developers.google.com/privacy-sandbox/private-advertising/enrollment) process to declare that they will not abuse these APIs for cross-site re-identification, but only for their intended use cases. The legal implications of this commitment if not respected is quite unclear, but this allows these callers to obtain an attestation file that must be placed at the `.well-known` URI `/.well-know/privacy-sandbox-attestations.json` on the domain they registered to call these APIs from.

## How does it work?

Chrome ships with a preloaded file containing a list of domains that have an attestation file registered and should be allowed to call the Privacy Sandbox APIs requiring attestation: Attribution Reporting, Protected App Signals (Android only), Private Aggregation (Chrome only), Protected Audience, Shared Storage (Chrome only), and Topics.

- [Enrollment](https://developer.chrome.com/blog/announce-enrollment-privacy-sandbox/)


## Analyses

{{< toc-tree >}}
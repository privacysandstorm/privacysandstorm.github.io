---
geekdocAnchor: false
title: Attribution Reporting API
geekdocCollapseSection: true
weight: 100
customCites:
 - langPrivacySandboxAggregation2024
 - aksuSummaryReportsOptimization2024
 - delaneyDifferentiallyPrivateAd2024
 - xiaoClickCompromiseOnline2025
---

{{< hint type=warning >}}
This API is being deprecated, although Google said they would continue work on a similar proposal through the web standards process, see the [official announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) and this [status overview](https://privacysandbox.google.com/overview/status) from Google.
{{</hint>}}

## Overview

Ad conversion measurement often relies on third-party cookies. Browsers are restricting access to third-party cookies because these can be used to track users across sites and hinder user privacy. The Attribution Reporting API enables those measurements in a privacy-preserving way, without third-party cookies. This API enables advertisers and ad tech providers to measure conversions in the following cases:

- Ad clicks and views.
- Ads in a third-party iframe, such as ads on a publisher site that uses a third-party ad tech provider.
- Ads in a first-party context, such as ads on a social network or a search engine results page, or a publisher serving their own ads.

## How does it work?

The developer guide provides a list of [use cases](https://privacysandbox.google.com/private-advertising/attribution-reporting/web#use_cases_and_features) which covers:
(a) **Event-level reports** associate a particular event on the ad side (a click, view or touch) with coarse conversion data. To preserve user privacy, conversion-side data is coarse, and noise is added to the reports that are not sent immediately. The number of conversions is also limited.
(b) **Summary reports** provide a mechanism for rich metadata to be reported in aggregate, to better support use-cases such as campaign-level performance reporting or conversion values.

- [Documentation (Web)](https://developers.google.com/privacy-sandbox/relevance/attribution-reporting)
- [Explainer](https://github.com/WICG/attribution-reporting-api)
- [Documentation (Android)](https://developers.google.com/privacy-sandbox/relevance/attribution-reporting)

## Analyses

{{< toc-tree >}}
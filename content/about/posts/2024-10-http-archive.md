---
geekdocAnchor: false
title: HTTP Archive Contributions
date: 2024-10-01
type: posts
tags:
  - Datasets & Software
weight: 3
---

{{< hint type=note >}}
- **Authors:** Yohan Beugin
- **Hostnames Classification:** [Documentation](https://har.fyi/reference/functions/get_host_categories) & [GitHub repository](https://github.com/yohhaan/httparchive-topics-classification)
- **Web Almanac:**
  - **Chapters:** [Cookies 2024](https://almanac.httparchive.org/en/2024/cookies) & [Privacy 2024 ](https://almanac.httparchive.org/en/2024/privacy) chapters
  - **Instrumentation:** see pull requests [129](https://github.com/HTTPArchive/custom-metrics/pull/129) and [131](https://github.com/HTTPArchive/custom-metrics/pull/131)
{{</hint>}}

Over the Summer and Fall of 2024, we collaborated with the [HTTP Archive](https://httparchive.org/), as part of the [Web Almanac](https://almanac.httparchive.org) project, and contributed by adding some instrumentation to their monthly crawl to detect the presence of the Privacy Sandbox APIs on visited websites. We also classified all the hostnames of the websites ever visited by the project with the latest version of the Topics API at the time.

As a result, we released one of the largest dataset of hosts/categories that is publicly available, wrote the [Cookies 2024](https://almanac.httparchive.org/en/2024/cookies) chapter of the Web Almanac and contributed to the analysis of the [Privacy 2024](https://almanac.httparchive.org/en/2024/privacy) chapter.

## [Hosts/Categories Classification](https://har.fyi/reference/functions/get_host_categories)

We classified all unique hostnames from all requests present in the HTTP Archive dataset that were made between November 2010 and June 2024 with the latest version of the [Topics API classifier](https://github.com/yohhaan/topics_classifier) (i.e., `chrome5`).

The classification spans a total of more than 147 million hostnames corresponding to 31 million unique domains. You can access the results either through the new `GET_HOST_CATEGORIES` BigQuery function on the HTTP Archive dataset or by directly querying the raw data in the `httparchive.urls.categories` table.

## Web Almanac Instrumentation

As part of the Web Almanac project, we also collaborated with the authors and analysts of the Cookies and Privacy 2024 chapters to instrument the HTTP Archive crawl with custom metrics to detect and measure the adoption of different Privacy Sandbox APIs. Different chapters from the Web Almanac 2024 leveraged these results as part of their analysis.

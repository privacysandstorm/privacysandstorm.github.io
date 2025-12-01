---
geekdocAnchor: false
title: Related Website Sets
geekdocCollapseSection: true
weight: 100
customCitesFull:
  - snyderFirstPartySetsTearing2022
  - mcquistinFirstLookRelated2024
  - beuginWebAlmanacCookies2024
---

{{< hint type=warning >}}
This API is being deprecated, see the [official announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) and this [status overview](https://privacysandbox.google.com/overview/status) from Google.
{{</hint>}}

## Overview

Related Website Sets (RWS, previously named First Party Sets) is designed to minimize disruptions to specific user-facing features once Chrome starts limiting access to third-party cookies by default. The goal is to allow users to browse the web with minimal disruption while still upholding the privacy goals of the Privacy Sandbox.
Specifically, RWS is a way for a company to declare relationships among sites, so that browsers allow limited third-party cookie access for specific purposes. Chrome will use these declared relationships to decide when to allow or deny a site access to their cookies when in a third-party context. At a high level, an RWS is a collection of domains, for which there is a single "set primary" and potentially multiple "set members."

## How does it work?

{{< hint type=tip >}}
Check out our `.well-known` [crawler](https://github.com/privacysandstorm/well-known-crawler) and [analysis](https://github.com/privacysandstorm/well-known-crawler-analysis) code, more details also on [this post](https://privacysandstorm.github.io/about/posts/2024-07-well-known-crawler).
{{</hint>}}

A related website set consists of one primary site and up to five associated sites. To use a set, its JSON must be added to the `related_website_sets.JSON` file available on the RWS GitHub repository, which Chrome then consumes to get the list of sets to apply RWS behavior to. `.well-known` files.
Each site in the set must also serve a `.well-known` file at `/.well-known/related-website-set.json`, which serves to verify the set structure and the relationship between the sites in the set. The primary site's `.well-known` file must explicitly list out the full set structure.

- [Documentation](https://developers.google.com/privacy-sandbox/3pcd/related-website-sets)
- [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/API/Storage_Access_API/Related_website_sets)
- [Explainer](https://github.com/GoogleChrome/related-website-sets)

The Storage Access API (SAA) provides a way for embedded cross-origin content to access the storage that it would normally only have access to in a first-party context. Embedded resources can use SAA methods to check whether they currently have access to storage, and to request access from the user agent. When third-party cookies are blocked but RWS is enabled, Chrome will automatically grant permission in intra-RWS contexts (such as an iframe, whose embedded site and top-level site are in the same RWS), and will show a prompt to the user otherwise.

## Analyses

{{< toc-tree >}}
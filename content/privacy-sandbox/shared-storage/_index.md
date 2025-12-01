---
geekdocAnchor: false
title: Shared Storage API
geekdocCollapseSection: true
weight: 100
customCitesFull:
 - nisenoffExploitingSharedStorage2025
---

{{< hint type=warning >}}
This API is being deprecated, see the [official announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) and this [status overview](https://privacysandbox.google.com/overview/status) from Google.
{{</hint>}}

## Overview

To prevent cross-site tracking, browsers are partitioning access to cookies, web storage resources, IndexedDB, cache API, etc. However, some legitimate use cases rely on cross-site information sharing, such as when advertisers need to measure ad reach across sites, or publishers wants to customize user experience based on the interests, groups, or past interactions of the user. The Shared Storage API aims to provide the needed data storage, processing, and sharing solution for these use cases without enabling third-party tracking.

## How does it work?

This is done by allowing unlimited, cross-site storage write access with privacy-preserving read access. Indeed, Similar to other storage APIs, shared storage allows writing data at any time but restricts reading data to inside a *worklet*. Worklets offer a secure environment for processing shared storage data, although direct data sharing with the associated browsing context isn't permitted.

- **API call:**
  - The party can write into storage using `window.sharedStorage` API
  - Available commands : `set,put,delete,clear`
  - Read from shared storage : only allowed in a fenced frame initiated by the same party
- [Documentation](https://developer.chrome.com/en/docs/privacy-sandbox/shared-storage/)
- [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/API/Shared_Storage_API)
- [Explainer](https://github.com/WICG/shared-storage)

## Analyses

{{< toc-tree >}}
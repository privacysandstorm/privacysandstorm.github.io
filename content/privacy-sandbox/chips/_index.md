---
geekdocAnchor: false
title: CHIPS
geekdocCollapseSection: true
weight: 100
customCitesFull:
 - beuginWebAlmanacCookies2024
 - beuginWebAlmanacCookies2026
---

{{< hint type=important >}}
This API is still being maintained by Google in Chrome, even after the [deprecation announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) of most other Privacy Sandbox APIs.
{{</hint>}}

## Overview

Cookies Having Independent Partitioned State (CHIPS) allow web developers to specify that they would like the cookies that they are setting to be saved in a partitioned storage, i.e., in a separate cookie jar per top-level site. Cookies that have the `Partitioned` attribute set can only be accessed by the same third party and from the same top-level site where they were created in the first place. In other words, partitioned cookies can not be used for third-party tracking across websites and allow for the legitimate use of third-party cookies on a top-level site.

## How does it work?

Partitioned cookies are stored by [compatible browsers](https://developer.mozilla.org/docs/Web/Privacy/Privacy_sandbox/Partitioned_cookies#browser_compatibility) using partitioned storage, i.e., the cookie is stored using two keys: the host key and a new partition key. This *partition key* is based on the scheme and eTLD+1 of the top-level URL of the visited site on which the request to set a partitioned cookie was made.

- **API:**
  - `Partitioned` attribute for the `Set-Cookie` HTTP header
  - Partitioned cookies must be set with `Secure` and are only set and sent over secure protocols. It is also recommended setting the `__Host` prefix on partitioned cookies.

- [Documentation](https://developers.google.com/privacy-sandbox/cookies/chips)
- [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/Privacy/Privacy_sandbox/Partitioned_cookies)
- [Explainer](https://github.com/GoogleChrome/developer.chrome.com/blob/main/site/en/docs/privacy-sandbox/chips/index.md)

## Analyses

{{< toc-tree >}}
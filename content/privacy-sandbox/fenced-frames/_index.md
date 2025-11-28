---
geekdocAnchor: false
title: Fenced Frames
geekdocCollapseSection: true
weight: 100
---

{{< hint type=warning >}}
This API is still being maintained by Google in Chrome, even after the [deprecation announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) of most other Privacy Sandbox APIs.
{{< /hint >}}

## Overview
Fenced frames are similar to iframes, i.e., embedded frames with HTML content, with the distinction that they enforce a strict boundary between the embedded content and the embedding page that can not access each other context's DOM. These fenced frames are intended to be used by other Privacy Sandbox APIs, such as the Protected Audience or Shared Storage APIs to prevent for instance publishers to learn any information about an ad auction winner and the ad displayed to users.

## How does it work?
Compatible web browsers serve fenced frames and manage the boundary with the embedding context by mapping the URL of the fenced frame to an opaque URL and restricting access to the resources available from inside a fenced fame.

- **API:**
  - JS:
    - `window.HTMLFencedFrameElement`
    - `window.FencedFrameConfig`
    - `FencedFrameConfig.setSharedStorageContext()`
  - HTTP headers:
    - `Sec-Fetch-Dest: fencedframe`
    - `Supports-Loading-Mode: fenced-frame`
- [Documentation](https://developers.google.com/privacy-sandbox/relevance/fenced-frame)
- [Explainer](https://github.com/WICG/fenced-frame/blob/master/explainer/README.md)

## Analyses

{{< toc-tree >}}
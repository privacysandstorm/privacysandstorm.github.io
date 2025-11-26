---
geekdocAnchor: false
title: User-Agent Reduction & User-Agent Client Hints
geekdocCollapseSection: true
weight: 100
---

{{< hint type=warning >}}
This API (User-Agent Client Hints) is being deprecated.
{{< /hint >}}

## Overview

User-Agent reduction is a mechanism implemented by several web browsers to minimize the amount of identifying information (used by fingerprinting techniques) shared through the `User-Agent` header and other APIs such as `navigator.userAgent`, `navigator.appVersion`, and `navigator.platform`.

User-Agent Client Hints allow web servers to explicitly request access to features (also designated as hints by the proposal) of the User-Agent header that are not exposed by default anymore. The idea is that browsers share a user-agent with low-entropy hints during the initial request, then servers that need them can explicitly ask compatible browsers for more hints through the proposed `Accept-CH` header. For a more detailed example, see this [explanation](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Client_hints).

Browsers would thus be technically able to mediate access to these user-agent hints of higher entropy. However, the proposal is unclear on how to perform so in practice, moreover, Google decided to not pursue their [privacy budget](../privacy-budget) proposal efforts that may have been part of a solution to this mediation problem.

- [Documentation User-Agent Reduction](https://developers.google.com/privacy-sandbox/protections/user-agent)
- [Documentation User-Agent Client Hints](https://developer.chrome.com/docs/privacy-security/user-agent-client-hints)


## Analyses

{{< toc-tree >}}
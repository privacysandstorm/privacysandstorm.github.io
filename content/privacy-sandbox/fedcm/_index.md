---
geekdocAnchor: false
title: Federated Credential Management API
geekdocCollapseSection: true
weight: 100
customCites:
 - westersSingleSignOnPrivacy2024
 - vacekIntegraceFedCMAPI2024
---

{{< hint type=important >}}
This API is still being maintained by Google in Chrome, even after the [deprecation announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) of most other Privacy Sandbox APIs.
{{</hint>}}

## Overview

The Federated Credential Management (FedCM) API allows identity providers to build an SSO-login infrastructure facilitated by compatible web browsers that does not require the use of third-party cookies or redirects.

## How does it work?

A relying party (RP) can allow users to sign-in using their credentials and account on a trusted third-party identity provider (IdP) by using the FedCM API. The browser mediates requests and information exchange between the RP and IdP through the FedCM API by:
- Gathering user content to login to the RP with the IdP.
- Recording if a relationship has been established between specific IdPs and RPs.
- Providing features to the IdP and RP specific to the user consent provided.

- **API:**
  - JS:
    - `navigator.credentials.get()`
    - `navigator.recordFederatedLogin()`
    - `IdentityCredential.disconnect()`
    - `navigator.login.setStatus("logged-in"/”logged-out”)`
  - HTTP headers: `Sec-FedCM-CSRF`
  - Permissions Policy on iframe: `allow="identity-credentials-get"`
- [Documentation](https://developers.google.com/privacy-sandbox/3pcd/fedcm-developer-guide)
- [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API)
- [Explainer](https://github.com/fedidcg/FedCM/blob/main/explainer.md)

## Analyses

{{< toc-tree >}}
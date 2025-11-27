---
geekdocAnchor: false
title: Privacy State Tokens
geekdocCollapseSection: true
weight: 100
---

{{< hint type=important title="Remarks">}}
This API is still being maintained by Google, even after the [deprecation announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) of most other Privacy Sandbox APIs.
{{< /hint >}}

## Overview

Private State Tokens (previously named Trust Tokens) enable trust in a user's authenticity to be conveyed in a cross-site manner in order to combat fraud and bots without the use of third-party cookies.
The API conveys information about the user in a cross-context manner. For example, if the user solves a CAPTCHA on one site, information that the user can be trusted is then communicated to other sites that the user visits.
The tokens are securely stored in the user's browser and can be used elsewhere to confirm the user's authenticity without revealing their identity. Trust established on one platform, like a social media site or email service, can be extended to other websites, such as publishers or online stores, without compromising user privacy or linking identities across platforms.

## How does it work?

- An **issuer** website verifies that a user meets some definition of trustworthiness through a challenge; e.g., solving a CAPTCHA, logging into an account, performing a transaction, etc. If completed successfully, the user's web browser is issued a token that proves cryptographically that they are considered trustworthy by the issuer service.

- On the **redeemer** side, the website can then confirm that a user is considered to be real by an issuer the redeemer trusts by checking if they have a valid and recently issued token. If so, they can redeem these tokens as needed without having to prompt users for another challenge.

- **API calls:**
  - Check if trust token exists: `document.hasPrivateToken()`
  - Check if redemption record exists: `document.hasRedemptionRecord()`
  - Issuance and redemption can be performed with Fetch and XHR requests and by embedding iframes.
  - Additionally, the mechanisms include multiple new “Sec-” HTTP headers that the browser includes automatically in outgoing network requests.
  - The issuance and redemption server needs to set up additional encryption and guarantee mechanisms to ensure that tokens are in compliance with the mechanism requirements.
- [Documentation](https://developers.google.com/privacy-sandbox/protections/private-state-tokens)
- [Explainer](https://github.com/WICG/trust-token-api)
- [Chrome Design Doc](https://docs.google.com/document/d/1TNnya6B8pyomDK2F1R9CL3dY10OAmqWlnCxsWyOBDVQ/edit)

## Analyses

{{< toc-tree >}}
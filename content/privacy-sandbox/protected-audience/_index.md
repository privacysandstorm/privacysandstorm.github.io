---
geekdocAnchor: false
title: Protected Audience API (FLEDGE)
geekdocCollapseSection: true
weight: 100
---

{{< hint type=warning >}}
This API is being deprecated, see the [official announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) from Google.
{{< /hint >}}

## Overview

The objective of the Protected Audience API (previously named FLEDGE) is to enable *``On-device ad auctions to serve remarketing and custom audiences, without cross-site third-party tracking''*. The API provides a real-time bidding infrastructure that instead of using third-party cookies rely on a new storage mechanism in the browser called interest groups. Advertisers can use these interest groups to save and record in users' browser their interests (metadata) and ads to show later to users. This information can be used in future ad auctions by advertisers to bid on available interest groups to serve targeted ads in specific ad campaigns.

## How does it work?

When users visit websites and interact with specific products for instance, embedded advertisers on that site can record this by requesting browsers to add these users to a specific interest group that contains ads for the corresponding or similar products. Later, when the user lands on a website with an ad space, their browser executes locally the ad auction logic for all interest groups they belong to and display the ad for the winning bid. The advertiser with the winning bid would thus be able to show ads targeted based on users' browsing behavior.

- **API calls:**
  - Interest Groups:
    - `navigator.joinAdInterestGroup()`
    - `navigator.leaveAdInterestGroup()`
    - `navigator.clearOriginJoinedAdInterestGroups()`
  - Auctions:
    - `navigator.runAdAuction()`
    - `navigator.adAuctionComponents()`
    - `navigator.createAuctionNonce()`
  - Several new HTTP headers as well:
    - `Ad-Auction-Allowed`
    - `Ad-Auction-Only`
    - `Ad-Auction-Signals`
    - `Ad-Auction-Additional-Bid`
    - `X-fledge-bidding-signals-format-version`
    - `Data-Version`
    - `Sec-Ad-Auction-Fetch`
- [Documentation (Web)](https://developers.google.com/privacy-sandbox/relevance/protected-audience)
- [Explainer](https://github.com/WICG/turtledove/blob/main/FLEDGE.md)
- [Documentation (Android)](https://developers.google.com/privacy-sandbox/relevance/protected-audience)


## Analyses

{{< toc-tree >}}
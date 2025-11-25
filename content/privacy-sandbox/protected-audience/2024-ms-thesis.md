---
geekdocAnchor: false
title: M.S. Thesis 2024
weight: 41
---

**Title:** [Post-Third-Party Cookies: Analyzing Google's Protected Audience API](https://www.cs.ru.nl/masters-theses/2024/M_Philipse___Post-Third-Party_Cookies_Analyzing_Google's_Protected_Audience_API..pdf)

**Authors:** Michiel Philipse (Radboud University), Güneş Acar (Radboud University), Christine Utz (Radboud University)

**Abstract/Summary:** In 2023, Google officially released the Privacy Sandbox: a collection of web technologies that are meant to eventually replace third-party cookies in Google Chrome. One of the APIs from the Privacy Sandbox is the Protected Audience API, which so far received little attention from the research community. This API facilitates ad auctions locally on the user's device, using ads suggested by websites previously visited by the user.
In this thesis, we analyze how this API is currently being used, based on data we got by crawling 10,000 popular websites. At the time of our crawl, Google's own DoubleClick was by far the most prevalent company using this new API. However, we also found six other advertising companies using the Protected Audience API. By looking at the provided function parameters that we collected during our crawl, we can see the suggested ads, how long the ads should remain, as well as whose ad auctions they may participate in and what auction logic they use. We did our crawl from both the US and the EU. When crawling from the EU, we got much fewer calls to join ad interest groups, likely due to EU regulations regarding user consent. While the Protected Audience API is a big improvement for the user's privacy compared to third-party cookies, many of its privacy protections are currently still quite weak to ease the transition for advertisers.

**Other:** [Artifact link](https://github.com/MichielP1807/tracker-radar-collector/)
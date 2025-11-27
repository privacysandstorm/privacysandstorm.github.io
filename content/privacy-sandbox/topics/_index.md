---
geekdocAnchor: false
title: Topics API
geekdocCollapseSection: true
weight: 100
---

{{< hint type=warning >}}
This API is being deprecated, see the [official announcement](https://privacysandbox.com/news/update-on-plans-for-privacy-sandbox-technologies/) from Google.
{{< /hint >}}

## Overview

**On the Web:** The Topics API is being developed by Google to deprecate *third-party cookies* on Chrome with the promise of both providing *utility to advertisers* and *privacy to users*. Google claims that topics do not reveal sensitive information because they are picked from a curated taxonomy, that users have *plausible deniability* as noisy topics are sometimes returned by the API, and that Topics can not be used to fingerprint users as others share the same interests (*𝑘-anonymity*). According to Google, observed topics are *useful* to advertisers because they are aligned with users’ interests and the API is designed so that it can be *usable and understandable* by users.

**On Android:** The goal of the Topics API for Android is to enable interest-based advertising on Android while deprecating the use of cross-app identifiers such as the Android advertising ID. Google expects that application developers and third parties will not be able to track users across applications, or even need to do so if the returned topics are aligned well enough with what advertisers want to infer about users’ interests. Google claims that third parties can not infer which applications are installed on users’ devices from the topics that are returned.

## How does it work?

{{< hint type=tip >}}
Check out our exact reimplementation of the [Topics Classifier (Web + Android)](https://github.com/yohhaan/topics_classifier), more details also on [this post](/about/posts/2024-02-topics-classifier).
{{< /hint >}}

**On the Web:** The Topics API works by having the web browser classify the websites visited by users into categories of interest. Advertisers who are embedded on websites can observe some of the recent top users’ topics and use that information to perform an ad auction.

In practice, the latest taxonomy is composed of 469 topics that are each associated with a standard or high utility label. Hostnames of websites visited by users are classified by Chrome locally into topics using a list of about 50k annotated domains and an ML classifier. Each week and for each user, only the top 5 topics ordered by utility first and then frequency are saved.

When an advertiser makes a call to the Topics API, a maximum of 3 topics (1 for each of the last 3 weeks) are returned; 95% of the time a real topic is picked from the user’s top 5 for that week, in the remaining 5%, a noisy one is randomly drawn from the taxonomy. Finally, a witness requirement in Topics enforces that a real topic is returned to an API caller only if they were embedded on a website of the same topic that was also visited by the user during one of the past 3 weeks.


- **API call:** `document.browsingTopics()` (+ also through HTTP Headers)
- [Documentation (Web)](https://developers.google.com/privacy-sandbox/relevance/topics/developer-guide)
- [Explainer (Web)](https://github.com/patcg-individual-drafts/topics)

**On Android:** Similarly to the Topics API for the web classifying users’ web behaviors into categories, the Topics API for Android monitors the applications being opened and used every week and classify users’ behaviors into topics of interest. Then, Topics reports some of each user’s top topics to third party SDKs that are embedded into other applications when they call the API.


- **API call:** `getTopics()`
- [Documentation (Android)](https://developers.google.com/privacy-sandbox/relevance/topics/android)
- [Documentation (Android)](https://developer.android.com/reference/android/adservices/topics/package-summary)
- [Explainer (Android)](https://github.com/privacysandbox/topics-android)



{{< hint type=important title="Remarks" >}}
**On the Web:** Google released a few privacy analyses about the re-identification risk of the Topics API. However, the empirical measurements are always done on a private dataset of real histories and only aggregate results reported, which prevents verification of Google’s assertions. Analyses by other actors have pointed to the risk that Topics be used to fingerprint users across sites, and this was demonstrated to be the case on real and simulated datasets.

**On Android:** The Topics API for Android appeared to be the Web proposal directly taken and adapted to Android applications: i.e., web domain names replaced by application identifiers. Thus, the Android proposal likely inherits similar limitations than the Topics API for the Web, but it is also unclear if and how the specifics of the Android ecosystem might be different and impact the API guarantees and users' privacy. For instance:
- Would users browsing the web on Chrome on their Android devices have both "Web" and "Android" topics profiles and would applications (like Chrome) be able to access both? Could profiles be linked?
- Advertisers also need to provide a public key used to encrypt the topics returned to them on Android, while the Web implementation does not require that. The reasoning behind this extra encryption step on Android is a bit unclear: is the concern that other SDKs would observe the results of API calls triggered by and aimed for a different APK?
{{< /hint >}}


## Analyses

{{< toc-tree >}}

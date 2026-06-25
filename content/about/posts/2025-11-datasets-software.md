---
geekdocAnchor: false
title: Datasets & Software
date: 2025-11-30
type: posts
tags:
  - Datasets & Software
weight: 4
customNoCites:
  - vekariaSoKAdvancesOpen2025
---

Our objective here is to list different resources that could be useful to researchers who are evaluating the privacy claims of different advertising and web proposals. Check out also similar content that is located elsewhere on our website under the ["Datasets & Software" tag](https://privacysandstorm.com/tags/Datasets-Software/).

## Datasets

- [**HTTP Archive**](https://httparchive.org/): This project regularly crawls top websites to record different information about the resources being fetched, APIs used, etc. The dataset and historical crawls can be accessed through BigQuery.

- [**HTTP Archive - Topics Classification**](https://har.fyi/reference/functions/get_host_categories): We classified all unique hostnames from all requests present in the HTTP Archive dataset that were made between November 2010 and June 2024 with the latest version of the Topics API classifier (i.e., `chrome5`). The classification spans a total of more than 147 million hostnames corresponding to 31 million unique domains. You can access the results either through the new `GET_HOST_CATEGORIES` BigQuery function on the HTTP Archive dataset or by directly querying the raw data in the `httparchive.urls.categories` table.

- [**.well-known dataset**](https://privacysandstorm.com/about/posts/2024-07-well-known-scanner/): attestations and related website sets discovered by the corresponding scanner are made publicly available.

- [**Criteo Research Datasets**](https://ailab.criteo.com/ressources/): Criteo, a French-based advertising company, has released over the years several datasets related to advertising campaigns, clicks, conversion, etc.

- [**A web tracking data set of online browsing behavior of 2,148 users**](https://doi.org/10.5281/zenodo.4383163): this is an anonymized dataset collected in October 2018 on 2148 users from Germany who have volunteered to share their desktop browsing histories for a financial compensation.

- [**National Internet Observatory**](https://nationalinternetobservatory.org/): the National Internet Observatory is a research study that collects data on the online behaviors and habits of U.S. participants (computers, phones, tablets). The Observatory aims to help researchers understand how people behave online and how online platforms structure what people see. Researchers can apply for data access by submitting proposals for studies.

- [**Fingerprinting Study**](https://github.com/aberke/fingerprinting-study): dataset of browser attributes with users' demographics details for 8,400 U.S. participants.

- [**Carat: Collaborative Energy Diagnosis**](https://web.archive.org/web/20240724123014/https://carat.cs.helsinki.fi/): the Carat research team from University of Helsinki led a project collecting large-scale energy diagnostics (e.g., battery status) from smartphone applications and devices at regular intervals. The dataset, if still available, could potentially be useful to analyze user activities on mobile devices and applications usage (Topics for Android, etc.)

- [**DuckDuckGo Tracker Radar**](https://github.com/duckduckgo/tracker-radar): dataset of most common third-party domains found on the web.

## Software

- [**Topics Classifier**](https://github.com/yohhaan/topics_classifier): this repository reproduces Google's implementations of the Topics API for the Web and for Android.

- [**.well-known scanner**](https://privacysandstorm.com/about/posts/2024-07-well-known-scanner/): we used to regularly scan the Web for the presence of `.well-known` resources and files that were introduced by the Related Website Sets and Attestation from the Privacy Sandbox.

- [**VisibleV8**](https://www.kapravelos.com/projects/vv8/): this is a custom variant of the V8 JavaScript engine at the heart of Chromium, the Node.js runtime, etc., that allows to capture and log JavaScript API calls while crawling websites for instance. This could be useful to researchers performing measurement studies on the Web.

- [**DuckDuckGo Tracker Radar Collector**](https://github.com/duckduckgo/tracker-radar-collector): a modular, multithreaded, puppeteer-based crawler used to generate third party request data for DuckDuckGo Tracker Radar, but also used by several academic studies.

## Other

- [**SoK: Advances and Open Problems in Web Tracking**](https://arxiv.org/abs/2506.14057) for a systematization of developments in web tracking (threat model for the web, tracking techniques, defenses, regulations overview, and evolution) and identification of open problems in the field.
---
title: Topics Classifier
weight: 10
---

## Description

The following repository reproduces Google's implementations of the Topics API
[for the Web](https://privacysandbox.com/proposals/topics/) and [for
Android](https://developer.android.com/design-for-safety/privacy-sandbox/topics).
To learn more about the context behind our need to re-implement this classifier,
you can read this [blog
post](https://yohan.beugin.org/posts/2024_02_topics_api_web_classifier.html).

## Repository

- https://github.com/yohhaan/topics_classifier

## Usage

### Topics API Simulator

This is used in our research:
- Repository: https://github.com/yohhaan/topics_api_analysis

### HTTP Archive Host Categories

We collaborated with the [HTTP Archive](https://httparchive.org/) to classify
with the Topics API a large dataset of about 147M hostnames that correspond to
31M sites:

- Documentation: https://har.fyi/reference/functions/get_host_categories
- Repository: https://github.com/yohhaan/httparchive-topics-classification

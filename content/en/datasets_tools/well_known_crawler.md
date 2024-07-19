---
title: .well-known crawler
weight: 20
---

## Description

Crawl well-known Resources introduced by The Privacy Sandbox:

- [Related Website Sets](https://github.com/GoogleChrome/related-website-sets)
  - `/.well-known/related-website-set.json`
  - HTTPS only
  - on ETLD+1 only, where [PSL](https://publicsuffix.org/) is authoritative source for ETLD
  - different JSON format depending if primary or other
  - There is a canonical public list of sets, but some (like google.com/youtube.com) are missing from it for instance
  - [Generator](https://rws-json-generator.ue.r.appspot.com/)

- [Attestation File](https://github.com/privacysandbox/attestation)
  - `/.well-known/privacy-sandbox-attestations.json`
  - Submit a form, JSON file sent by Google
  - No public list of who participates


## Repositories

- Crawler: https://github.com/privacysandstorm/well-known-crawler
- Post-analysis: https://github.com/privacysandstorm/well-known-crawler-analysis


## Datasets

### Requestor pays buckets

Datasets for this crawler are stored on Amazon S3 in [requestor pays buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ObjectsinRequesterPaysBuckets.html). This means that you must pay API call and data transfer rates associated with downloading the data. All datasets are stored in the `us-east-2` region, so you can avoid data transfer fees by performing analysis within this region.

### Buckets

Data is stored in one of two buckets depending on the nature of the data:

* `s3://well-known-crawler-data` - raw crawl data are stored within this bucket. You may use any AWS IAM account to download from this bucket.
* `s3://well-known-crawler-analysis` - analysis artifacts are stored within this bucket. You may use any AWS IAM account to download from this bucket.

### Results

The crawl automatically runs twice per month as a minimum followed by the post
analysis. You can always access the most up-to-date version of the
results at the following URLs (in addition to in the buckets above):

- List of origins with an `/.well-known/related-website-set.json` file: https://privacysandstorm-public-data.s3.us-east-2.amazonaws.com/well-known-crawler/rws_known_origins.json
- List of origins with an `/.well-known/privacy-sandbox-attestations.json` file: https://privacysandstorm-public-data.s3.us-east-2.amazonaws.com/well-known-crawler/attestation_known_origins.json
- Generated list of enrollment sites and corresponding APIs: https://privacysandstorm-public-data.s3.us-east-2.amazonaws.com/well-known-crawler/attestation_known_apis.tsv



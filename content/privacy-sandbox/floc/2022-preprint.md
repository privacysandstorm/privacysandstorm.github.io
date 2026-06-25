---
geekdocAnchor: false
title: Preprint 2022
weight: 20
---

**Title:** [A complementary utility and privacy trade-off evaluation of Google's FloC API](https://inria.hal.science/hal-03953308/)

**Authors:** Guillaume Kessibi (INSA Lyon), Aymen Ould Hamouda (INSA Lyon), Charly Poirier (INSA Lyon), Antoine Boutet (PRIVATICS)

**Abstract/Summary:** Controversial online advertising practices such as hidden monitoring of users activities from unknown companies through third-party cookies (also known as tracking cookies) has raised concerns of users about the privacy of their personal data. To address these concerns, Google proposed an alternative to third-party cookies called FLoC (Federated Learning of Cohorts) API, designed to provide a privacypreserving mechanism for interest-based ad selection. The underlying idea of FLoC is simple: use a cohort based approach (i.e., a cohort is a group of users ranging in the thousands with the same interests) instead of tracking users individually on the internet. Google has shown the valuable of Floc for interest based advertising through evaluation using datasets (e.g., MovieLens), and has conducted a trial in Spring 2021 to assess FLoC in real conditions. However, the utility and privacy trade-off of FLoC is still unclear and several comments have pointed out limitations of the technology. In this paper, we conducted complementary experimental evaluations to better understand the utility and privacy trade-off of FLoC. Specifically, we evaluated the behavior of cohorts in terms of user acquaintance and churn (driving the utility), and the uniqueness of cohorts path of users (to assess the privacy). We show that the valuable performances obtained from simulations using MovieLens dataset do not provide the same conclusions as the observations done during the real life experiment. This substantial performance difference coming from the exploitation of data with a different nature (i.e., a sparse dataset of movie ratings versus the browsing history of the users), questions the choice of the considered dataset to evaluate a solution.

**Other:** uses this [FLoC SimHash implementation](https://github.com/hybridtheory/floc-simhash)
---
geekdocAnchor: false
title: Google 2022 White Paper
weight: 10
---

**Title:** [Measures of cross-site re-identification risk: An analysis of the Topics API Proposal](https://github.com/patcg-individual-drafts/topics/blob/main/topics_analysis.pdf)

**Authors:** Alessandro Epasto (Google Research), Andres Muñoz Medina (Google Research), Christina Ilvento (Chrome), Josh Karlin (Chrome)


**Abstract/Summary:** We present an analysis of the ability of a third party to use the Topics API to re-identify a user across two different sites. Our analysis explores how some of the design choices affect this capability. We present both worst-case and optimistic scenarios for user re-identification, and provide empirical evidence that the topics revealed are closer to the optimistic scenario than the worst-case one.

{{< hint type=important title="Remarks" >}}

From our <a href="https://doi.org/10.56553/popets-2024-0004">PETS'24</a> paper:

``*Along with the Topics proposal, Google released this white paper analyzing the risk of third parties re-identifying users across websites. First, an analytical evaluation is carried out to compute the aggregate information leakage of Topics for two scenarios (per single and longitudinal leakage) followed by an empirical experiment on a private dataset of synced Chrome users browsing histories. The reported results show that the information learned by a third party is somewhat limited compared to the worst case scenario identified. This analysis is important for the discussion around the Privacy Sandbox proposals, but it also has limitations (some explicitly mentioned by the authors), for instance:*
1. *It assumes that no actor is colluding with each other when in practice advertisers could easily have such incentive.*
2. *Some uniform assumptions about the distribution and observations of topics are made.*
3. *Results are reported in aggregate potentially hiding risks for specific users.*
4. *The noise in the mechanism is very briefly discussed.*
5. *Only 2 epochs were considered in the empirical evaluation.*''

{{< /hint >}}
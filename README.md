# Privacy Sandstorm

**Privacy Sandstorm** is a research portal that gathers resources about the [Privacy Sandbox](/content/privacy-sandbox) initiative from Google as well as [other proposals](/content/other) related to online security, privacy, and advertising. Our main objectives are to:
1. Give broader visibility to the findings from the research community in that space.
2. Coordinate multidisciplinary approaches to evaluate and improve these proposals.

This community-based effort was launched after the [HotPETs 2024 talk](/content/about/hotpets2024) *``The Need for a (Research) Sandstorm through the Privacy Sandbox'' by Yohan Beugin and Patrick McDaniel*.

```bibtex
@inproceedings{beuginNeedResearchSandstormPrivacySandbox2024,
  title = {The Need for a (Research) Sandstorm through the Privacy Sandbox},
  author = {Yohan Beugin and Patrick McDaniel},
  month = jul,
  year = {2024},
  booktitle = {17th Workshop on Hot Topics in Privacy Enhancing Technologies (HotPETs)},
  url = {https://privacysandstorm.github.io},
}
```

## APIs Inventory and Updates

We list for each API of the Privacy Sandbox (as well as other mechanisms), relevant resources such as documentation, explanations on how they work, and analyses performed by several actors (white paper, other web actors, researchers, etc.). For each new API: (1) create sub-directory, (2) add and complete the [`_index.md`](/templates/_index.md) file, and (3) for each analysis or paper add and complete a corresponding [`202Y-venue.md`](/templates/202Y-venue.md) markdown file. The table of content listing the different analyses will automatically update.

## Other

### To update the theme

```bash
mkdir -p themes/hugo-geekdoc/
curl -L https://github.com/thegeeklab/hugo-geekdoc/releases/latest/download/hugo-geekdoc.tar.gz | tar -xz -C themes/hugo-geekdoc/ --strip-components=1
hugo server -D
```
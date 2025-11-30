#import "typst-acmart-popets/clean-acmart.typ": acmart, acmart-keywords, to-string

#let title = [
  Technical Report: The Need for a (Research) Sandstorm through the Privacy Sandbox
]
#let authors = (
  (
    name: [#link("https://orcid.org/0000-0003-0991-7926")[Yohan Beugin]],
    institute: [University of Wisconsin–Madison],
    email: [#link("ybeugin@cs.wisc.edu")[ybeugin\@cs.wisc.edu]],
  ),
  (
    name: [#link("https://orcid.org/0000-0003-2091-7484")[Patrick McDaniel]],
    institute: [University of Wisconsin–Madison],
    email: [#link("mcdaniel@cs.wisc.edu")[mcdaniel\@cs.wisc.edu]],
  ),
)

#let conference = (
  name: [17th Workshop on Hot Topics in Privacy Enhancing Technologies (HotPETs)],
  year: [2024],
)

#let keywords = ("Privacy Sandbox", "Advertising", "Third-party cookies")

#show: acmart.with(
  title: title,
  authors: authors,
  ncols-authors: 2,
  conference: conference,
  doi: none,
)

#show link: set text(fill: blue)
#show heading: set block(above: 1em)

= Abstract
#include "abstract.typ"

#acmart-keywords(keywords)

#include "01-introduction.typ"

// #colbreak()
#include "privacy-sandbox.typ"
// #colbreak()
#include "other-proposals.typ"
// #colbreak()

#heading(level: 1, numbering: none)[Acknowledgements]
#include "from-md/ack.typ"


#bibliography("refs.bib", title: "References", style: "association-for-computing-machinery")



// #colbreak(weak: true)
// #set heading(numbering: "A.a.a")

// = Appendix

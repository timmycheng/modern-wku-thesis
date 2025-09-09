// this is template test of wku thesis
#import "../src/lib.typ": gradute_thesis

#show: gradute_thesis.with(
  title: "thesis title",
  authors: (
    (name: "bao cheng",id:"1234567"),
  ),
  bibliography: bibliography("refs.bib")
)
= Introduction
#lorem(1000)
= Background
#lorem(200)

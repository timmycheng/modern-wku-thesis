#let gradute_thesis(
  title: [thesis title],
  authors: (),
  bibliography: none,
  body
)={
  set document(title: title, author: authors.map(author=>author.name))
  set heading(numbering: "I.A.a.")
  set page(margin: 2.5cm, numbering: "1")
  align(center)[#text(size: 1.5em)[#title]]
  pagebreak()
  outline(title: "Table of Contents")
  pagebreak()
  outline(title: "List of Figures",target: figure.where(kind: figure))
  pagebreak()
  outline(title: "List of Tables",target: figure.where(kind: table))
  pagebreak()
  show std.bibliography: set text(8pt)
  show std.bibliography: set block(spacing: 0.5em)
  set std.bibliography(title: text(10pt)[References], style: "ieee")
  body
  // 使用相对于调用文件的路径
  bibliography
}
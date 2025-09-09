#let gradute_thesis(
  title: [thesis title],
  author: [author name],
  degree: [MS of Computer Information Systems],
  department: [Department of Computer Science and Technology],
  university: [Wenzhou-Kean University],
  supervisor: [Supervisor Name],
  month: [Month],
  year: [Year],
  degree_year: [2023],
  program_type: [Master of Science],
  degree_type: [Master],
  degree_department: [Computer Science and Technology],
  abstract: none,
  keywords: none,
  acknowledgments: none,
  bibliography: none,
  body
)={
  set document(title: title, author: author)
  set heading(numbering: (..nums) => {
    let level = nums.pos().len()
    if level == 1 {
      "Chapter " + str(nums.pos().at(0))
    } else if level == 2 {
      str(nums.pos().at(0)) + "." + str(nums.pos().at(1))
    } else if level == 3 {
      str(nums.pos().at(0)) + "." + str(nums.pos().at(1)) + "." + str(nums.pos().at(2))
    } else {
      nums.pos().map(str).join(".")
    }
  })
  set page(margin: 2.5cm)
  
  // Cover page - no numbering
  set page(numbering: none)
  
  // Professional cover page layout
  v(1fr)
  
  align(center)[
    #text(size: 18pt, weight: "bold")[#title]
    
    #v(2em)
    
    #text(size: 12pt)[by]
    
    #v(1em)
    
    #text(size: 14pt, weight: "bold")[#author]
    
    #v(3em)
    
    #text(size: 12pt)[
      A Thesis Submitted in Fulfillment of the Requirements for the Degree of
    ]
    
    #v(1em)
    
    #text(size: 13pt, weight: "bold")[#degree]
    
    #v(4em)
    
    // University logo
     #image("assets/logo.png", width: 80pt)
    
    #v(3em)
    
    #text(size: 12pt)[#department]
    
    #v(0.5em)
    
    #text(size: 12pt)[#university]
    
    #v(3em)
    
    #text(size: 12pt)[Supervised By: #supervisor]
    
    #v(4em)
    
    #text(size: 12pt)[©#month #year]
  ]
  
  v(1fr)
  
  pagebreak()
  
  // Back cover page - appears right after front cover
  // Back cover layout matching the sample design
  v(2cm)
  
  grid(
    columns: (1fr, 1fr),
    column-gutter: auto,
    row-gutter: 1.5em,
    align: (left, right),
    
    // Left column
    [
      #text(size: 11pt, weight: "bold")[#program_type (#degree_year)]
      #linebreak()
      #text(size: 11pt)[#degree_department]
    ],
    
    // Right column
    [
      #text(size: 11pt, weight: "bold", )[#university]
      #linebreak()
      #text(size: 11pt)[Wenzhou, China]
    ],
    [],[],
    // Title row
    [
      #text(size: 11pt, weight: "bold")[TITLE:]
    ],
    [
      #text(size: 11pt)[#title]
    ],
    
    // Author row
    [
      #text(size: 11pt, weight: "bold")[AUTHOR:]
    ],
    [
      #text(size: 11pt)[#author]
      #linebreak()
      #text(size: 11pt)[#degree_type], #text(size: 11pt)[(#degree_department)]
      #linebreak()
      #text(size: 11pt)[#university]
      #linebreak()
      #text(size: 11pt)[Wenzhou, China]
    ],
    
    // Supervisors row
    [
      #text(size: 11pt, weight: "bold")[SUPERVISORS:]
    ],
    [
      #text(size: 11pt)[#supervisor]
    ],
    
    // Number of pages row - auto-generated
    [
      #text(size: 11pt, weight: "bold")[NUMBER OF PAGES:]
    ],
    [
      #context {
        let total-pages = counter(page).final().first()
        text(size: 11pt)[#total-pages]
      }
    ]
  )
  
  v(1fr)
  
  // Page number at bottom
  align(center)[
    #text(size: 10pt)[ii]
  ]
  
  pagebreak()
  
  // Preliminary pages - Roman numerals
  set page(numbering: "i")
  counter(page).update(1)
  
  // Abstract section (if provided)
  if abstract != none {
    text(size: 25pt, weight: "bold")[Abstract]
    
    v(2em)
    
    text(size: 12pt)[#abstract]
    
    v(2em)
    
    if keywords != none {
      text(size: 12pt, weight: "bold")[Keywords: ] + text(size: 12pt)[#keywords]
    }
    
    pagebreak()
  }
  
  // Acknowledgments section (if provided)
  if acknowledgments != none {
    text(size: 25pt, weight: "bold")[Acknowledgments]
    
    v(2em)
    
    text(size: 12pt)[#acknowledgments]
    
    pagebreak()
  }
    
  
  
  outline(title: "Table of Contents")
  pagebreak()
  outline(title: "List of Figures", target: figure.where(kind: image))
  pagebreak()
  outline(title: "List of Tables", target: figure.where(kind: table))
  pagebreak()
  
  // Main content - Arabic numerals starting from 1
  set page(numbering: "1")
  counter(page).update(1)
  show std.bibliography: set text(8pt)
  show std.bibliography: set block(spacing: 0.5em)
  set std.bibliography(title: text(10pt)[References], style: "ieee")
  body
  // 使用相对于调用文件的路径
  bibliography
}
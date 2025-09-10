# Wenzhou-Kean University CSMT Thesis Template

This is a Typst template for graduated students in CSMT (Computer Science and Mathematics) at Wenzhou-Kean University.

## Usage

You can use this template in the Typst web app by clicking "Start from template" on the dashboard and searching for `wku-thesis`.

Alternatively, you can use the CLI to kick this project off using the command

```typ
typst init @preview/wku-thesis
```

Typst will create a new directory with all the files needed to get you started.

## Configuration

This template exports the `graduate-thesis` function with following named arguments:

- title: The title of thesis.
- author: author name, directly refer, put like `John Doe, Lolo Tomassi` if there are more than one auther.
- degree: default is `MS of Computer Information Systems`.
- department: default is `Department of Computer Science and Technology`.
- university: default is `Wenzhou-Kean University`.
- supervisor: Supervisor name, directly refer, put like `John Doe, Lolo Tomassi` if there are more than one supervisor.
- month: default is `December`.
- year: default is `2023`.
- degree_year: default is `2023`.
- program_type: default is `Master of Science`.
- degree_type: default is `Master`.
- degree_department: default is `Computer Science and Technology`.
- abstract: The abstract of thesis, directly input, if you want paragraph break, follow the rule of typst(empty line).
- keywords: The keywords of thesis, directly input, if you want more than one keyword, put like `keyword1, keyword2, keyword3`.
- acknowledgments: The acknowledgments of thesis, directly input, if you want paragraph break, follow the rule of typst(empty line).
- acronyms: store in dictionary, like ('CMST': 'Computer Science and Technology'), just input like this, and it will generate a table automatically.
- bibliography: using `ieee` style, export your reference list in .bib file, and input the file name like `bibliography('ref.bib')`.

the example of using this template is like following:

```typ
#import "@preview/wku-thesis:0.1.0": graduate-thesis

#show: gradute_thesis.with(
  title: [Automatic Visualization of Traceability Information],
  author: "Cheng Bao",
  degree: [MS of Computer Information Systems],
  department: [Department of Computer Science and Technology],
  university: [Wenzhou-Kean University],
  supervisor: [Dr. Nasser Mustafa],
  month: [December],
  year: [2025],
  degree_year: [2025],
  program_type: [Master of Science],
  abstract: [
    the abstract goes here

    second paragraph must leave a blank row between them
  ],
  keywords: [Traceability; Automatic; Regular Expression; Visualization; TMS.],
  acknowledgments: [
    the acknowledgments goes here

    second paragraph must leave a blank row between them
  ],
  bibliography: bibliography("refs.bib"),
  acronyms: (
    "TMS": "Traceability Management System",
    "RE": "Regular Expression",
    "CSV": "Comma-Separated Values",
  ),
)

// YOUR OWN THESIS CONTENT GOES HERE
```

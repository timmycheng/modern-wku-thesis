// this is template test of wku thesis
#import "../src/lib.typ": gradute_thesis

#show: gradute_thesis.with(
  title: "Automatic Visualization of Traceability Information",
  author: "Cheng Bao",
  degree: "MS of Computer Information Systems",
  department: "Department of Computer Science and Technology",
  university: "Wenzhou-Kean University",
  supervisor: "Dr. Nasser Mustafa",
  month: "December",
  year: "2025",
  degree_year: "2025",
  program_type: "Master of Science",
  abstract: [
    Classical Traceability Management Systems (TMS) help track links between software parts like requirements, designs, Code, and test cases. They help keep projects organized and meet quality goals. But they have issues. Pulling out data takes too long. Searching is hard. The results are greasy and not easy to understand. These problems slow teams down and make fast decisions, especially for agile teams.
    
    This study proposes an improved Traceability Management System (TMS) for software engineering processes. The system retrieves data in real-time and presents it through dynamically updating charts. It is designed to operate with greater speed and simplicity, thereby enhancing team coordination and progress monitoring.
    
    Utilizing regular expressions, the system efficiently extracts critical information from intricate software datasets. This extracted data is subsequently transformed into comprehensible visual representations.
  ],
  keywords: [Traceability; Automatic; Regular Expression; Visualization; TMS.],
  acknowledgments: [
    I would like to express my sincere gratitude to my supervisor, Dr. Nasser Mustafa, for his invaluable guidance, patience, and support throughout this research. His expertise and insights have been instrumental in shaping this work.
    
    I am also grateful to the faculty and staff of the Department of Computer Science and Technology at Wenzhou-Kean University for providing an excellent academic environment and resources that made this research possible.
    
    Special thanks to my family and friends for their unwavering support and encouragement during this journey. Their belief in me has been a constant source of motivation.
    
    Finally, I acknowledge all the researchers and authors whose work has contributed to the foundation of this study. Their contributions to the field of software engineering and traceability management have been invaluable.
  ],
  bibliography: bibliography("refs.bib")
)
= Introduction
#lorem(20)
== Second heading
=== Third heading
= Background
#lorem(200)

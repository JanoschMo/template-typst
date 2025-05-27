// This is a template for documentation
// Page settings
#set page(
    paper: "a4"
)
// Format Text
#set par(
    justify: true
)
#set text(
    size: 12pt
)
// Title page
// ZHAW logo
#align(right, image("Figures/zhaw_rgb.jpg", width: 20%))
// Title
#align(left, text(36pt)[*This is a Title*] )
// Subtitle
#align(left, text(20pt)[*This is a Subtitle*] )
// InES specifications and date 
#align(left, text(16pt)[\
    Zurich University of Applied Sciences\
    Institute of Embedded Systems\
    Winterthur, Switzerland
    \
    \
    #datetime.today().display("[day] [month repr:long] [year]")
]
)

#pagebreak()
// Contact information
#align(left, text(12pt)[
    *Contact*\
    Vorname Name\
    Institute of Embedded Systems\
    Zurich University of Applied Sciences\
    Technikumstrasse 22\
    8401 Winterthur\
    Switzerland\
    \
    Mail: vorname.name\@zhaw.ch
])
#pagebreak()
// Header and footer config
#set page(
    header: [
        #grid(
            columns: (1fr,1fr,1fr),
            align(left)[Title],
            align(center)[],
            align(right)[#image("Figures/zhaw_rgb.jpg", width: 20%)],
        )
        #v(-1em)
        #line(length: 100%)
    ],
    footer: context [
      #line(length: 100%)
      #set align(center)
      #v(-1em)
      #counter(page).display("1/1",
      both: true)
      #set align(left)
      #v(-1.9em)
      #datetime.today().display("[day].[month].[year repr:last_two]")
    ]
)
// Table of Contents
#set heading(numbering: "1.")
#outline(
    title: "Table of Contents",
    indent: 0em
)
#pagebreak()
// 1 headers
= *Header*
#lorem(3)
== Subheader
#lorem(50)
=== Subsubheader
#lorem(55)
==== Subsubsubheader
#lorem(35)

#pagebreak()

// 2 headers
= *Header*
== Subheader
#lorem(50)


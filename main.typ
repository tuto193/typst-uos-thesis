#import "template.typ": project, gls, cite-et-al, cite-string, fancy-align, fancy-fill, fancy-stroke
#import "glossaries.typ": GLOSSARIES
#import "languages.typ": dict
// If you need to mark stuff and not forget!
// #import "@preview/big-todo:0.2.0": *
// If you need FANCIER tables!
// #import "@preview/tablex:0.0.7": tablex, rowspanx, colspanx, hlinex, vlinex

// Make a simple separator for term lists
#set terms(separator: [: ], tight: false)

// Set the language of the document here!
// #let language = "de"
// #let language = "es"
#let language = "en"

#let figimage = figure.with(supplement: [#dict.at(language).at("fig")], kind: image)
// Use this to cite code in a cool way
#let code(body, caption: "", label: <code>, placement: auto) = {
    let content = ()
    let i = 1
    for item in body.children {
        if item.func() == raw {
            for line in item.text.split("\n") {
                content.push(text(str(i), font: "Fira Code", fill: luma(180), size: 10pt))
                content.push(raw(line, lang: item.lang))
                i += 1
            }
        }
    }
    let bg-fill-1 = luma(230)
    let bg-fill-2 = luma(240)
    [
        #figimage(
          block(
            // stroke: 1pt + gray, 
            inset: 0pt, 
            // fill: rgb(99%, 99%, 99%), 
            fill: bg-fill-1,
            // width: 0.8fr,
            radius: 10pt,
          )[
            #set align(left)
            #table(
              columns: (auto, 1fr),
              inset: 4pt,
              stroke: none,
              fill: (_, row) => {
                if calc.odd(row) {
                  bg-fill-2
                } else {
                  bg-fill-1
                }
              },
              align: horizon,
              ..content
            ) 
          ],
          caption: [#caption],
          placement: placement,
        )
        #label
    ]
}
#let figtable = figure.with(supplement: [#dict.at(language).at("tab")], kind: table)


#show: project.with(
  title: "My Very Cool Title",
  lang: language,
  degree: "master",
  author: "John Doe",
  registration-number: "123456",
  institute: "Institute of Very Cool People",
  logo: "images/logo.png",
  bibliography-path: "bibliography.bib",
  bibliography-style: "ieee",
  city: "Osnabrück",
  first-supervisor: "Prof. Dr. Max Müstermann",
  second-supervisor: "Prof. Dr. rer. nat. Müs Maxterfrau",
  // abstract: [
  //   I am the abstract text.
  // ],
  glossaries: GLOSSARIES,
  double-sided: false,  // affects the placements of page numbers
)

= Introduction
<chap-Introduction>
Here we are in @chap-Introduction.


#lorem(90)... see @fig-1

#figimage(
  [A simple test figure],
  caption: [My very cool caption],
) <fig-1>

== Motivation
<sec-Motivation>
We are in @sec-Motivation and here is a fancy table in @table-1, and we can
do some references. Let's quote something with many authors #cite-et-al("RWS+2023GDAL", form: "prose").

#figtable(
  table(
    columns: 2,
    align: fancy-align,
    fill: fancy-fill,
    stroke: fancy-stroke,
    [My Left], [My Right],
    [1], [a],
    [2], [b],
    [3], [c],
  ),
  caption: "Not so fancy caption",
) <table-1>

There is also some code in @code-1.
#code(
  [
  ```python
my_list: list = [1, 3, 4, 9]
print(my_list)
  ```
  ],
  caption: [Some code],
  label: <code-1>
)


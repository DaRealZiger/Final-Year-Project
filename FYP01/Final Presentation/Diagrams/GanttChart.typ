#set page(flipped: true, margin: 1.2cm, fill: white)
#set text(size: 8pt, fill: rgb("#1a202c"))

#let start = datetime(year: 2026, month: 7, day: 6) // TW1
#let n = 18
#let skip = 8 // 31 Aug is not a TW

#let navy = rgb("#1a365d")
#let c-prop = rgb("#3182ce")
#let c-design = rgb("#319795")
#let c-pres = rgb("#dd6b20")
#let c-report = rgb("#805ad5")

// (task, start TW, end TW, color)
#let tasks = (
  ("Individual Proposal", 1, 4, c-prop),
  ("Select Group Project Title", 5, 6, c-prop),
  ("Project Pre-Approval Presentation", 7, 8, c-pres),
  ("Feasibility Study", 9, 9, c-design),
  ("Project Design & Concept Development", 9, 11, c-design),
  ("FYP Progress Presentation", 12, 13, c-pres),
  ("FYP Proposal Report", 14, 15, c-report),
  ("FYP Proposal Presentation", 16, 18, c-pres),
)

#let legend-item(c, label) = box[
  #box(width: 8pt, height: 8pt, fill: c, radius: 2pt, baseline: 1pt) #h(2pt) #label
]

// Title
#block(width: 100%, fill: navy, inset: 12pt, radius: 4pt)[
  #text(16pt, weight: "bold", fill: white)[FYP1 Gantt Chart]
  #h(1fr)
  #text(9pt, fill: rgb("#bee3f8"))[6 Jul - 13 Nov 2026]
]
#v(6pt)

#table(
  columns: (auto, 6.5cm) + (1fr,) * n,
  align: center + horizon,
  inset: (x: 3pt, y: 5pt),
  fill: (x, y) => if y == 0 { navy } else if calc.odd(y) { rgb("#f4f7fb") } else { white },
  stroke: (x, y) => (
    bottom: 0.4pt + rgb("#e2e8f0"),
    left: if x >= 2 { 0.3pt + rgb("#edf2f7") } else { none },
  ),
  table.header(
    text(white, weight: "bold")[No],
    align(left, text(white, weight: "bold")[Task]),
    ..range(n).map(j => text(5.5pt, white)[
      *TW#(j + 1)* \
      #(start + duration(weeks: if j >= skip { j + 1 } else { j })).display("[day]/[month]")
    ]),
  ),
  ..tasks.enumerate().map(((k, t)) => (
    text(weight: "bold", fill: navy)[#(k + 1)],
    align(left, t.at(0)),
    ..range(t.at(1) - 1).map(_ => []),
    table.cell(colspan: t.at(2) - t.at(1) + 1, inset: (x: 1.5pt, y: 4pt))[
      #box(width: 100%, height: 10pt, fill: t.at(3), radius: 4pt)
    ],
    ..range(n - t.at(2)).map(_ => []),
  )).flatten(),
)

#v(8pt)
#align(center)[
  #legend-item(c-prop, [Proposal]) #h(12pt)
  #legend-item(c-design, [Design]) #h(12pt)
  #legend-item(c-pres, [Presentation]) #h(12pt)
  #legend-item(c-report, [Report])
]

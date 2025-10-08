//
// Description: Custom pages for the thesis template
// Author     : Sierro Yann

#import "/metadata.typ": *


#let mse-title-page = {
  set page(
    margin: (
      top:3.0cm,
      bottom:3.0cm,
      rest:3.5cm
    )
  )
  //-------------------------------------
  // Page content
  //
  align(center)[
    #logos.logo-hesso

    #v(0.5cm)

    #logos.logo-mse

    #v(1cm)

    #text(doc.title, size:30pt)
    #v(2cm)
    #text(size:25pt)[
      Master of Science in Engineering
    ]
    #v(0.3cm)
    #text(size:20pt)[
      #school.orientation
    ]
    #v(0.5cm)
    #text(size:15pt)[
      Date of publication #date.submission.display()
    ]
  ]

  v(3cm)
  text(size:12pt)[
    _*Produced by*_
  ]

  v(0.5cm)

  text(size:22pt)[
    #h(1cm)
    Author #doc.author.name
  ]

  v(0.5cm)

  text(size:12pt)[
    #h(1cm)
    Under the supervision of #professor.name \
    #h(1cm)
    In collaboration with #professor.affiliation
  ]

}

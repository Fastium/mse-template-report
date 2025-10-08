#import "@preview/hei-synd-thesis:0.2.1": *

//-------------------------------------
// Document options
//
#let option = (
  type : sys.inputs.at("type", default:"draft"),    // [draft|final]
  lang : sys.inputs.at("lang", default:"en"),       // [en|fr|de]
  template    : "thesis",   // [thesis/midterm]
)

#import "@preview/fractusist:0.3.2":*
#let project-logo= dragon-curve(
  12,
  step-size: 1.6,
  stroke: stroke(
    paint: gradient.radial(..color.map.rocket),
    thickness: 0.5pt, join: "round"
  )
)

//-------------------------------------
// Metadata of the document
//
#let doc= (
  title    : "Thesis Template",
  subtitle : "Longer Subtitle",
  author: (
    gender      : "masculin",  // ["masculin"|"feminin"|"inclusive"]
    name        : "Firstname Lastname",
    email       : "firstname.lastname@hevs.ch",
    degree      : "Bachelor",
    affiliation : "HEI-Vs",
    place       : "Sion",
    url         : "https://synd.hevs.io",
    signature   : image("/01-resources/official/signature.svg", width:3cm),
  ),
  keywords : ("HEI-Vs", "Systems Engineering", "Infotronics", "Thesis", "Template"),
  version  : "v0.1.0",
)

#let professor= (
  affiliation: "HEI-Vs",
  name: "Prof. Silvan Zahno",
  email: "silvan.zahno@hevs.ch",
)
#let expert= (
  affiliation: "Company",
  name: "Expert Name",
  email: "expert@domain.ch",
)
#let school= (
  name: none,
  orientation: none,
  specialisation: none,
)
#if option.lang == "de" {
  school.name = "Hochschule für Ingenieurwissenschaften Wallis, HES-SO"
  school.orientation = "Systemtechnik"
  school.specialisation = "Infotronics"
} else if option.lang == "fr" {
  school.name = "Haute École d'Ingénierie du Valais, HES-SO"
  school.shortname = "HEI-Vs"
  school.orientation = "Systèmes industriels"
  school.specialisation = "Infotronics"
} else {
  school.name = "University of Applied Sciences Western Switzerland, Master MSE"
  school.shortname = "Master MSE"
  school.orientation = "Systems Engineering"
  school.specialisation = "Infotronics"
}

#let date = (
  submission: datetime(year: 2025, month: 8, day: 14),
  mid-term-submission: datetime(year: 2025, month: 5, day: 2),
  today: datetime.today(),
)

#let logos = (
  confidential: image("/01-resources/hes-so/confidential.png", width: 6cm),
  logo-hesso: image("/01-resources/hes-so/logo-hesso.png", width: 5cm),
  logo-hesso-master: image("/01-resources/hes-so/logo-hesso-master.jpg", width: 3cm),
  logo-mse: image("/01-resources/hes-so/logo-mse.png", width: 16cm),
  logo-square-up-right: image("/01-resources/hes-so/square-style-up.png", width: 2cm),
  logo-square-bottom-left: image("/01-resources/hes-so/square-style-bottom.png", width: 2cm)
  )
)

//-------------------------------------
// Settings
//
#let tableof = (
  toc: true,
  tof: false,
  tot: false,
  tol: false,
  toe: false,
  maxdepth: 3,
)

#let gloss    = true
#let appendix = false
#let bib = (
  display : true,
  path  : "/02-tail/bibliography.bib",
  style : "ieee", //"apa", "chicago-author-date", "chicago-notes", "mla"
)

// Template for other languages. Replace values but not keys where needed
#let english = (
  degree: (
    bachelor: "Bachelor's thesis",
    master: "Master's thesis",
  ),
  index: "Contents",
  supervisors: (
    first: "First supervisor",
    second: "Second supervisor",
  ),
  sections: (
    main: "Chapter",
    other: "Section",
  ),
  lists: (
    figures: "List of Figures",
    tables: "List of Tables",
    glossary: "List of Abbreviations"
  ),
  bib: "Bibliography",
  fig: "Figure",
  tab: "Table",
  months: (
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ),
  proclamation: (
    title: "Proclamation",
    contents: [
      I hereby confirm that I wrote this thesis independently and that I
      have not made use of any other resources or means than those indicated.
    ]
  ),
)

#let german = (
  degree: (
    bachelor: "Bachelorarbeit",
    master: "Masterarbeit",
  ),
  supervisors: (
    first: "Erstgutachter",
    second: "Zweitgutachter",
  ),
  index: "Inhaltsverzeichnis",
  sections: (
    main: "Kapitel",
    other: "Abschnitt",
  ),
  lists: (
    figures: "Abbildungsverzeichnis",
    tables: "Tabellenverzeichnis",
    glossary: "Abkürzungsverzeichnis",
  ),
  bib: "Quellenangaben",
  fig: "Abbildung",
  tab: "Tabelle",
  months: (
    "Januar",
    "Februar",
    "März",
    "April",
    "Mai",
    "Juni",
    "Juli",
    "August",
    "September",
    "Oktober",
    "November",
    "Dezember",
  ),
  proclamation: (
    title: "Eidesstattliche Erklärung",
    contents: [
      Hiermit versichere ich, dass ich die vorliegende Arbeit selbständig
      verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel
      benutzt sowie Zitate kenntlich gemacht habe.
    ]
  ),
)

#let spanish = (
  degree: (
    bachelor: "Tésis de bachelor",
    master: "Tésis de maestría",
  ),
  index: "Contenidos",
  supervisors: (
    first: "Primer supervisor",
    second: "Segundo supervisor",
  ),
  sections: (
    main: "Capítulo",
    other: "Sección",
  ),
  lists: (
    figures: "Lista de Ilustraciones",
    tables: "Lista de Tablas",
    glossary: "Lista de Abreviaturas",
  ),
  bib: "Bibliografía",
  fig: "Ilustración",
  tab: "Tabla",
  months: (
    "Enero",
    "Febrero",
    "Marzo",
    "Abril",
    "Mayo",
    "Junio",
    "Julio",
    "Agosto",
    "Septiembre",
    "Octubre",
    "Noviembre",
    "Deciembre",
  ),
  proclamation: (
    title: "Declaración",
    contents: [
      Por la presente, confirmo que he escrito esta tesis de manera
      independiente y que no he utilizado ningún otro recurso o medio que
      no esté indicado.
    ]
  ),
)

#let dict = (
  en: english,
  de: german,
  es: spanish,
)

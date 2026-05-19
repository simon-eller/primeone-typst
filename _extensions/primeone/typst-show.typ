#show: doc => article(
$if(title)$
  title: "$title$",
$endif$
$if(subtitle)$
  subtitle: "$subtitle$",
$endif$
$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
  ( name: "$it.name.literal$",
    affiliation: [$for(it.affiliations)$$it.name$$sep$, $endfor$],
    email: "$it.email$".replace("\@", "@") ),
$endif$
$endfor$
    ),
$endif$
$if(date)$
  date: "$date$",
$endif$
$if(lang)$
  lang: "$lang$",
$endif$
$if(region)$
  region: "$region$",
$endif$
$if(abstract)$
  abstract: [$abstract$],
  abstract-title: "$labels.abstract$",
$endif$
$if(margin)$
  margin: ($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$),
$endif$
$if(papersize)$
  paper: "$papersize$",
$endif$
$if(mainfont)$
  font: "$mainfont$",
$elseif(brand.typography.base.family)$
  font: $brand.typography.base.family$,
$endif$
$if(fontsize)$
  fontsize: $fontsize$,
$elseif(brand.typography.base.size)$
  fontsize: $brand.typography.base.size$,
$endif$
$if(title)$
$if(brand.typography.headings.family)$
  heading-family: $brand.typography.headings.family$,
$endif$
$if(brand.typography.headings.weight)$
  heading-weight: $brand.typography.headings.weight$,
$endif$
$if(brand.typography.headings.style)$
  heading-style: "$brand.typography.headings.style$",
$endif$
$if(brand.typography.headings.color)$
  heading-color: $brand.typography.headings.color$,
$endif$
$if(brand.typography.headings.line-height)$
  heading-line-height: $brand.typography.headings.line-height$,
$endif$
$endif$
$if(section-numbering)$
  sectionnumbering: "$section-numbering$",
$endif$
  pagenumbering: $if(page-numbering)$"$page-numbering$"$else$none$endif$,
$if(toc)$
  toc: $toc$,
$endif$
$if(toc-title)$
  toc-title: [$toc-title$],
$endif$
$if(toc-indent)$
  toc-indent: $toc-indent$,
$endif$
$if(titlepage)$
  titlepage: $titlepage$,
$endif$
$if(title-size)$
  title-size: $title-size$,
$endif$
$if(subtitle-size)$
  subtitle-size: $subtitle-size$,
$endif$
$if(heading-size)$
  heading-size: $heading-size$,
$endif$
$if(theme)$
  theme: $theme$,
$endif$
  toc-depth: $toc-depth$,
  cols: $if(columns)$$columns$$else$1$endif$,
  doc,
)

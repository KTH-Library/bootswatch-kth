<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

# bootswatch-kth

Custom KTH styled BS v 3 and 4 and 5 theme building on Thomas Park's MIT-licensed Bootswatch themes (https://github.com/thomaspark/bootswatch)

## Background

The official [`kth-style` repository at GitHub](https://github.com/KTH/kth-style) provides a BS 4 based styling assets for theming in KTH's centrally maintained web. If you are using a Node / React based JS stack - please do not use this repository, use the official kth-style repository instead.

If you are using an R-based stack, you will probably find that the kth-style BS 4 theme at https://github.com/KTH/kth-style cannot be directly used in R / shiny / flexdashboard / Rmarkdown-based solutions which instead favors BS 3 based themes. This is the case for example in solutions such as those provided in https://github.com/KTH-Library/bibliomatrix and https://github.com/KTH-Library/ktheme. It might still be possible but would appear to require extensive modifications and rebuilding of certain framework components that expect to use BS v 3-based stylesheets etc. 

The need for a BS v3-based variant of the KTH style has therefore resulted in this repository, which can also provide provide a BS v 4-version of the KTH theme. This KTH styled theme is a simple customization of the [Bootswatch Flatly theme](https://bootswatch.com/flatly/) that uses the fonts and the KTH color palettes that are also used in https://github.com/KTH-Library/ktheme - which provides styling assets for plots and visuals. 

This KTH styled Bootswatch theme tries to conform with colors and fonts at https://github.com/KTH/kth-style/blob/master/public/sass/variables but the conformance can be improved further. Please log an issue in this repo if you find things that can further unify the look and feel. 

## Visual examples

- [KTH BS v 3 Bootswatch Theme](https://KTH-Library.github.io/bootswatch-kth/v3)
- [KTH BS v 4 Bootswatch Theme](https://KTH-Library.github.io/bootswatch-kth/v4)
- [KTH BS v 5 Bootswatch Theme](https://KTH-Library.github.io/bootswatch-kth/v5)

# Usage

Use the stylesheet and assets provided in [](dist/v3/kth) or [](dist/v4/kth) or [](dist/v5/kth) respectively.

Follow instructions given for integrating style assets for the given components or frameworks.

## Styling for R-centric stacks

Example resources for styling if using R/shiny/shinydashboard/flexdashboard like those used in the Annual Bibliometric Monitoring project:

- [shinydashboard](https://rstudio.github.io/shinydashboard/) uses [Admin LTE](https://adminlte.io) in a version based on BS 3 with instructions for customization here: https://rstudio.github.io/shinydashboard/appearance.html#css. Admin LTE [can also itself be modified with custom CSS](https://adminlte.io/blog/customizing-and-downsizing-adminlte-to-match-your-businsess).

- [flexdashboard](https://rmarkdown.rstudio.com/flexdashboard/) appearance can be customized: https://rmarkdown.rstudio.com/flexdashboard/using.html#appearance but is also based on BS3 (Bootswatch Theme variants).

- [shiny](https://shiny.rstudio.com/) appearance can be customized for example using “shinythemes”; see https://github.com/rstudio/shinythemes/tree/master/inst/shinythemes/css which also bundles Bootswatch themes based on BS3.

- [rmarkdown](https://rmarkdown.rstudio.com/) and shiny appearance can also be customized using https://rstudio.github.io/bootstraplib/ - Bootswatch themes are supported

- [knitr](https://en.wikipedia.org/wiki/Knitr) can generate HTML reports using for example Bootswatch themes: https://github.com/jimhester/knitrBootstrap#bootstrap-themes

# Developers

With `make` and `docker` installed these BS v3 and v4 and v5 versions of the customized Bootswatch KTH theme can be built locally. 

Steps:

		make

This will result in the dist/v3 and dist/v4 and dist/v5 directories, both holding a folder named "kth" with the results.

## Modifications

To modify the BS v3 variant:

- edit the [LESS bootswatch file](/v3/kth/bootswatch.less) and [LESS variables file](/v3/kth/variables.less) files and then issue "make", then use the resulting files in the dist/v3 directory

To modify the BS v4 variant:

- edit the [SASS bootswatch file](/v4/dist/kth/_bootswatch.scss) and [SASS variables file](/v4/dist/kth/_variables.scss) files and then issue "make", then use the resulting files in the dist/v4 directory

To modify the BS v5 variant:

- edit the [SASS bootswatch file](/v5/dist/kth/_bootswatch.scss) and [SASS variables file](/v5/dist/kth/_variables.scss) files and then issue "make", then use the resulting files in the dist/v5 directory

See the [Makefile](Makefile) for available build targets



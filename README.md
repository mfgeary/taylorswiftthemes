
<!-- README.md is generated from README.Rmd. Please edit that file -->

# taylorswiftthemes

<!-- badges: start -->
<!-- badges: end -->

The goal of taylorswiftthemes is to …

## Installation

You can install the development version of taylorswiftthemes from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mfgeary/taylorswiftthemes")
#> Downloading GitHub repo mfgeary/taylorswiftthemes@HEAD
#> colorspace  (2.0-3 -> 2.1-0) [CRAN]
#> rlang       (1.0.6 -> 1.1.1) [CRAN]
#> cli         (3.6.0 -> 3.6.1) [CRAN]
#> utf8        (1.2.2 -> 1.2.3) [CRAN]
#> vctrs       (0.5.2 -> 0.6.2) [CRAN]
#> pillar      (1.8.1 -> 1.9.0) [CRAN]
#> fansi       (1.0.3 -> 1.0.4) [CRAN]
#> viridisLite (0.4.0 -> 0.4.2) [CRAN]
#> tibble      (3.1.8 -> 3.2.1) [CRAN]
#> isoband     (0.2.5 -> 0.2.7) [CRAN]
#> gtable      (0.3.1 -> 0.3.3) [CRAN]
#> ggplot2     (3.4.1 -> 3.4.2) [CRAN]
#> Installing 12 packages: colorspace, rlang, cli, utf8, vctrs, pillar, fansi, viridisLite, tibble, isoband, gtable, ggplot2
#> Installing packages into '/private/var/folders/9j/lvjt0v6d513_rdj7xjc8h7tc0000gn/T/RtmpZN0myo/temp_libpathccc74054285'
#> (as 'lib' is unspecified)
#> 
#> The downloaded binary packages are in
#>  /var/folders/9j/lvjt0v6d513_rdj7xjc8h7tc0000gn/T//RtmpJFHbUs/downloaded_packages
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#> * checking for file ‘/private/var/folders/9j/lvjt0v6d513_rdj7xjc8h7tc0000gn/T/RtmpJFHbUs/remotes18d774aa89fe/mfgeary-taylorswiftthemes-d3c8868/DESCRIPTION’ ... OK
#> * preparing ‘taylorswiftthemes’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘taylorswiftthemes_0.0.0.9000.tar.gz’
#> Installing package into '/private/var/folders/9j/lvjt0v6d513_rdj7xjc8h7tc0000gn/T/RtmpZN0myo/temp_libpathccc74054285'
#> (as 'lib' is unspecified)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(taylorswiftthemes)
```

## All Palettes

``` r
display_taylor_all()
#> $debut
#>  [1] "#09a143" "#88c8bc" "#0cb1ea" "#a0c639" "#5a411f" "#79d2f6" "#f3d2a1"
#>  [8] "#ea989f" "#648236" "#295042"
#> 
#> $debut2
#>  [1] "#92d7d6" "#038c95" "#9acbb6" "#aab45e" "#b27a78" "#c8d670" "#3cb3ab"
#>  [8] "#37b4e0" "#94eefd" "#35f8e8"
#> 
#> $debut3
#> [1] "#34f2fe" "#00a2ad" "#6aebb3" "#97e9c1" "#c6e597"
#> 
#> $gap1
#> [1] ""
#> 
#> $fearless_TV
#>  [1] "#e3ce96" "#6c4d26" "#e9e3cd" "#d2b475" "#bc9f65" "#ab8346" "#98763f"
#>  [8] "#9b8971" "#361f0a" "#c1b4b4"
#> 
#> $fearless_TV2
#>  [1] "#efc619" "#949e63" "#85C7F2" "#cab35d" "#ebdb7a" "#ee964b" "#B66D0D"
#>  [8] "#CBE896" "#DCABDF" "#F6DB79"
#> 
#> $fearless_TV3
#> [1] "#f7ed94" "#dec477" "#c3b377" "#c49977" "#bb8f68"
#> 
#> $gap2
#> [1] ""
#> 
#> $speak_now_TV
#>  [1] "#d5528e" "#4f3261" "#c97cae" "#e1ae7c" "#2d2560" "#e7a3c4" "#803f95"
#>  [8] "#b286bf" "#97314b" "#be7074"
#> 
#> $speak_now_TV2
#>  [1] "#6f2dbd" "#a663cc" "#b298dc" "#b8d0eb" "#b9faf8" "#d264b6" "#631d76"
#>  [8] "#7364d2" "#dc93f6" "#eec7fc"
#> 
#> $speak_now_TV3
#> [1] "#7f00ff" "#844abb" "#a32aa3" "#88368a" "#bd9b51"
#> 
#> $gap3
#> [1] ""
#> 
#> $red_TV
#>  [1] "#961710" "#8a6d58" "#290c07" "#691801" "#acae9c" "#57503b" "#ab3b32"
#>  [8] "#c0a78f" "#71503a" "#739b9c"
#> 
#> $red_TV2
#>  [1] "#e04754" "#ffcbdd" "#7c0b2b" "#d10000" "#3e000c" "#568d66" "#004733"
#>  [8] "#e28080" "#e95555" "#ef2b2b"
#> 
#> $red_TV3
#> [1] "#bca38d" "#9e7c60" "#954d25" "#951e1a" "#951e1a"
#> 
#> $gap4
#> [1] ""
#> 
#> $nineteen_eighty_nine
#>  [1] "#94767e" "#d9d7e2" "#424959" "#7a9bbd" "#c2bab0" "#878d9c" "#a26548"
#>  [8] "#bd997c" "#5980aa" "#c7ad8c"
#> 
#> $nineteen_eighty_nine2
#>  [1] "#ced1fd" "#d6ebff" "#8fc6da" "#9ea0e4" "#7993ef" "#c38584" "#ded6f2"
#>  [8] "#ae418d" "#c9673b" "#f38485"
#> 
#> $nineteen_eighty_nine3
#> [1] "#d2bd88" "#dcc9a8" "#d7e9ff" "#c7b8e3" "#b9bfe3"
#> 
#> $gap5
#> [1] ""
#> 
#> $reputation
#>  [1] "#0b4e45" "#92aca9" "#722930" "#c55135" "#082426" "#C30950" "#f99dcb"
#>  [8] "#496dae" "#61c9c8" "#7B0828"
#> 
#> $reputation2
#>  [1] "#8b8c8b" "#6d625d" "#0a0808" "#c6b9b2" "#4a4d4d" "#7f2b41" "#8597b0"
#>  [8] "#1625c9" "#a78f71" "#255442"
#> 
#> $reputation3
#> [1] "#eeeeee" "#727272" "#404040" "#222222" "#000000"
#> 
#> $gap6
#> [1] ""
#> 
#> $lover
#>  [1] "#e6a5b9" "#f5d0c0" "#fde4bc" "#e2e5b1" "#c7c8a6" "#8cd3d4" "#87b3be"
#>  [8] "#bbcbd8" "#ad7d8a" "#b69ca5"
#> 
#> $lover2
#>  [1] "#ff64b7" "#ab6dd2" "#beddbf" "#748cc1" "#aeced8" "#eee37c" "#f7b7ed"
#>  [8] "#5d459f" "#aededd" "#ddd9b3"
#> 
#> $lover3
#> [1] "#fdcdcd" "#dec0fc" "#cec0fd" "#adc0fb" "#94e1e9"
#> 
#> $gap7
#> [1] ""
#> 
#> $folklore
#>  [1] "#909e6c" "#9c7457" "#1e221b" "#908f53" "#b3b499" "#797f71" "#d5c39f"
#>  [8] "#4e5b33" "#a9a9a6" "#6d5d3c"
#> 
#> $folklore2
#>  [1] "#7f7f7f" "#c4c4c4" "#333333" "#545454" "#a4a4a4" "#e1e1e1" "#afafaf"
#>  [8] "#1a1a1a" "#444444" "#9b9a9b"
#> 
#> $folklore3
#> [1] "#ffffff" "#bababa" "#7f7f7f" "#353535" "#2e2e2e"
#> 
#> $gap8
#> [1] ""
#> 
#> $evermore
#>  [1] "#d48452" "#5f3819" "#bd3b22" "#b19d7a" "#97bab7" "#b47131" "#214E34"
#>  [8] "#80604e" "#50A2A7" "#605a42"
#> 
#> $evermore2
#>  [1] "#423629" "#fbf1ce" "#cba47d" "#816956" "#18170e" "#605550" "#9c8c7c"
#>  [8] "#6b6457" "#696164" "#c4ac9c"
#> 
#> $evermore3
#> [1] "#cd621c" "#994914" "#7f3c11" "#533211" "#372322"
#> 
#> $gap9
#> [1] ""
#> 
#> $midnights
#>  [1] "#4e5d85" "#6b7ba0" "#7593ad" "#92b4c5" "#6494a5" "#757175" "#cc9475"
#>  [8] "#bb5953" "#c8b7b2" "#50373b"
#> 
#> $midnights2
#>  [1] "#11159c" "#4eadd6" "#d2aec1" "#b17ba1" "#73dde1" "#15616d" "#9345b3"
#>  [8] "#789bd4" "#CFD11A" "#724CF9"
#> 
#> $midnights3
#> [1] "#b8acd0" "#e2d5f1" "#c9e8fd" "#536d86" "#4e4466"
#> 
#> $gap10
#> [1] ""
#> 
#> $all_albums
#>  [1] "#9BBD4C" "#F0DE42" "#C45AB3" "#9B1D20" "#99B2DD" "#25272D" "#FF85C2"
#>  [8] "#94A3B3" "#B87D4B" "#11159c"
#> 
#> $all_albums2
#>  [1] "#8AE9C1" "#FCD757" "#885A89" "#F15025" "#AFC1D6" "#1B3022" "#EDC7CF"
#>  [8] "#86A397" "#524632" "#0B6884"
#> 
#> $eras_tour
#>  [1] "#067383" "#d9b1a7" "#ad9fba" "#f8a3c3" "#040711" "#12c6d5" "#730607"
#>  [8] "#854569" "#eabd9f" "#bbdec2"
#> 
#> $karma
#>  [1] "#f69d0d" "#f45608" "#f41c34" "#e2068d" "#c200fb" "#2e005d" "#1957db"
#>  [8] "#7ea3f1" "#b83700" "#fbc55f"
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

``` r
display_taylor_pal("karma")
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

``` r

display_taylor_pal("speak_now_TV2")
```

<img src="man/figures/README-unnamed-chunk-4-2.png" width="100%" />

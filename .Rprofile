# rm(list = ls(all.names = TRUE))
# Load Libraries
library(knitr)
library(kableExtra)
library(formatR)

# jointly use R and Python Together

# RMD Options
options(knitr.duplicate.label = "allow")
knitr::opts_chunk$set(fig.width=7, fig.height=4, fig.align="center")
# knitr::opts_chunk$set(tidy.opts=list(width.cutoff=60), tidy=TRUE)
knitr::opts_chunk$set(warning=FALSE, message=FALSE, cache=FALSE)
knitr::opts_chunk$set(engine='R')

# Output HTML or Latex
if (knitr::is_latex_output()) {
  options(knitr.table.format = "latex")
} else {
  options(knitr.table.format = "html")
}

# Table Output Options
kable_styling_fc = function(kable_input){
  kable_styling(kable_input,
    bootstrap_options = c("striped", "hover", "responsive"),
    latex_options = c("striped", "hold_position"),
    full_width = FALSE,
    fixed_thead = T,
    position = "center",
    font_size = NULL,
    row_label_position = "l")
}

# Table Output Options:
# 1. scale_down for TEX
# 2. box width: see Math4Econ\style.css for body width, set width to bodywidth - 225
if (knitr::is_latex_output()) {
  kable_styling_fc_wide = function(kable_input){
    kable_styling(kable_input,
      bootstrap_options = c("striped", "hover", "responsive"),
      latex_options = c("striped", "scale_down", "hold_position"),
      full_width = FALSE,
      fixed_thead = T,
      position = "center",
      font_size = NULL,
      row_label_position = "l")
  }
} else {
  kable_styling_fc_wide = function(kable_input){
    kable_styling(kable_input,
      bootstrap_options = c("striped", "hover", "responsive"),
      latex_options = c("striped", "scale_down", "hold_position"),
      full_width = FALSE,
      fixed_thead = T,
      position = "center",
      font_size = NULL,
      row_label_position = "l") %>%
    scroll_box(width = "875px")
  }
}

# Get Current File Path
spt_file_current <- knitr::current_input(dir = TRUE)
print(paste0('spt_file_current:',spt_file_current))
spt_file_current <- gsub(x = spt_file_current,  pattern = "_mod.Rmd", replacement = ".Rmd")

if(!is.null(spt_file_current)) {
  sfc_prj='/Math4Econ'
  sph_gitpages_root='https://fanwangecon.github.io/'
  sph_github_root='https://github.com/FanWangEcon/'
  sph_branch='/master'
  sph_pdf='/htmlpdfm'
  sph_html='/htmlpdfm'
  sph_r='/htmlpdfm'

  # spt_root <- 'C:/Users/fan/Math4Econ/'
  spt_root <- 'G:/repos/Math4Econ/'
  spn_prj_rmd <- gsub(spt_root, "", spt_file_current)
  spt_rmd_path <- paste0('/',dirname(spn_prj_rmd))

  st_fullpath_noname <- dirname(spt_file_current)
  st_fullpath_nosufx <- sub('\\.Rmd$', '', spt_file_current)
  st_file_wno_suffix <- sub('\\.Rmd$', '', basename(spt_file_current))
  print(paste0('st_fullpath_noname:', st_fullpath_noname))
  print(paste0('st_fullpath_nosufx:', st_fullpath_nosufx))
  print(paste0('st_file_wno_suffix:', st_file_wno_suffix))

  spth_pdf_html <- paste0(st_fullpath_noname, '/htmlpdfm/')
  sfle_pdf_html <- paste0(st_fullpath_noname, '/htmlpdfm/', st_file_wno_suffix)
  print(spth_pdf_html)

  sph_source_blob_root = paste0(sph_github_root, sfc_prj, '/blob', sph_branch, spt_rmd_path, '/')
  sph_rmd_pdf = paste0(sph_source_blob_root, sph_pdf, '/', st_file_wno_suffix, '.pdf')
  sph_rmd_m = paste0(sph_source_blob_root, sph_r, '/', st_file_wno_suffix, '.m')
  sph_rmd_mlx = paste0(sph_source_blob_root, '/', st_file_wno_suffix, '.mlx')

  sph_source_web_root = paste0(sph_gitpages_root, sfc_prj, spt_rmd_path, '/')
  sph_rmd_html = paste0(sph_source_web_root, sph_html, '/', st_file_wno_suffix, '.html')

  st_head_link = '> Go to the'
  st_head_link = paste0(st_head_link, ' [**MLX**](', sph_rmd_mlx ,'),')
  st_head_link = paste0(st_head_link, ' [**M**](', sph_rmd_m ,'),')
  st_head_link = paste0(st_head_link, ' [**PDF**](', sph_rmd_pdf ,'),')
  st_head_link = paste0(st_head_link, ' or [**HTML**](', sph_rmd_html ,')')
  st_head_link = paste0(st_head_link, ' version of this file.')

  # Common Shared Text and Strings
  total_area <- (800 * 7) / 2
  if (st_file_wno_suffix == 'Introductory-Mathematics-for-Economists-with-Matlab') {
    text_shared_preamble_one <- paste0("> Go back to [fan](http://fanwangecon.github.io/)'s [MEconTools](https://fanwangecon.github.io/MEconTools/) Package, [Matlab Code Examples](https://fanwangecon.github.io/M4Econ/) Repository ([bookdown site](https://fanwangecon.github.io/M4Econ/bookdown)), or [Math for Econ with Matlab](https://fanwangecon.github.io/Math4Econ/) Repository ([bookdown site](https://fanwangecon.github.io/Math4Econ/bookdown)).")
  } else {
    text_shared_preamble_one <- paste0(st_head_link, " Go back to [fan](http://fanwangecon.github.io/)'s [MEconTools](https://fanwangecon.github.io/MEconTools/) Package, [Matlab Code Examples](https://fanwangecon.github.io/M4Econ/) Repository ([bookdown site](https://fanwangecon.github.io/M4Econ/bookdown)), or [Math for Econ with Matlab](https://fanwangecon.github.io/Math4Econ/) Repository ([bookdown site](https://fanwangecon.github.io/Math4Econ/bookdown)).")
  }
}

text_shared_preamble_two <- ""
text_shared_preamble_thr <- ""

if (knitr::is_latex_output()) {
    text_top_count <- ""
    text_end_count <- ""
} else {
    text_top_count <- "[![HitCount](http://hits.dwyl.com/fanwangecon/Math4Econ.svg)](https://github.com/FanWangEcon/Math4Econ)  [![Star](https://img.shields.io/github/stars/fanwangecon/Math4Econ?style=social)](https://github.com/FanWangEcon/Math4Econ/stargazers) [![Fork](https://img.shields.io/github/forks/fanwangecon/Math4Econ?style=social)](https://github.com/FanWangEcon/Math4Econ/network/members) [![Star](https://img.shields.io/github/watchers/fanwangecon/Math4Econ?style=social)](https://github.com/FanWangEcon/Math4Econ/watchers)"
    text_end_count <- "[![](https://img.shields.io/github/last-commit/fanwangecon/Math4Econ)](https://github.com/FanWangEcon/Math4Econ/commits/master) [![](https://img.shields.io/github/commit-activity/m/fanwangecon/Math4Econ)](https://github.com/FanWangEcon/Math4Econ/graphs/commit-activity) [![](https://img.shields.io/github/issues/fanwangecon/Math4Econ)](https://github.com/FanWangEcon/Math4Econ/issues) [![](https://img.shields.io/github/issues-pr/fanwangecon/Math4Econ)](https://github.com/FanWangEcon/Math4Econ/pulls)"
}

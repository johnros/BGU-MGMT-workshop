rm(list=ls())

file.remove('Rcourse.Rmd')
bookdown::render_book("index.Rmd","bookdown::gitbook")
bookdown::render_book("index.Rmd","bookdown::pdf_book", clean_envir = TRUE) # render to HTML
bookdown::render_book("index.Rmd","bookdown::word_document2", clean_envir = TRUE)
bookdown::clean_book()

files <- list.files(pattern = '.Rmd')
file.remove('Rcourse.Rmd')
for(i in 9:length(files)){
  bookdown::preview_chapter(files[i],"bookdown::pdf_book" )
  readline(prompt="Press [enter] to continue")
}
bookdown::preview_chapter(files[1],"bookdown::pdf_book" )
bookdown::preview_chapter(files[22],"bookdown::gitbook" )

bookdown::preview_chapter('25-r-basics.Rmd',"bookdown::pdf_book" )

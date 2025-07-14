
status:
   git status . -- ':!docs'

render: 
   quarto render

# Note: this may result in source out of sync with the site
deploy:
  quarto render
  git add docs
  git commit -m "publish site"
  git push
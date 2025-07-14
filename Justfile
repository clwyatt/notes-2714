
status:
   git status . -- ':!docs'

render: 
   quarto render

# Note: this may result in source out of sync with the site
# Check that `just status` shows no desired modifications before running
deploy:
  quarto render
  git add docs
  git commit -m "publish site"
  git push
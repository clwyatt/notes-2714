
status:
   git status . -- ':!docs'

render:
   make -C figures -f Makefile_tikz
   make -C figures -f Makefile_ipe
   quarto render

# Note: this may result in source out of sync with the site
# Check that `just status` shows no desired modifications before running
deploy: render
  @if [ $(git branch --show-current) = "main" ]; then \
            echo "Deploying main branch"; \
            git add docs &&  git commit -m "publish site" && git push; \
   else \
            echo "Error: not on main branch"; \
   fi
	

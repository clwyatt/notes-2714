
# Building the document

Prerequisites: standard Latex distribution: TexLive, MacTex, MikTex, etc. or Overleaf. 

The simplest way is to compile is to use [latexmk](https://ctan.org/pkg/latexmk?lang=en). The provided Makefile builds the necessary figures and then just runs latexmk.

```
latexmk notes-2714.tex
```

# TODO

* merge figures and  graphics directories
* replace matlab scripts with python and/or C++
* move plotting scripts to seperate folder and integrate with build system
* add a quick reference 
* add solved problems for most sections using old problem sets
* add more material to appendix



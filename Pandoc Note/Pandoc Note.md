[How to use Pandoc to produce a research paper](https://opensource.com/article/18/9/pandoc-research-paper)

create paper.pdf from paper.md and paper.bib
```
pandoc --citeproc --bibliography=paper.bib --variable classoption=twocolumn --variable papersize=a4paper -s paper.md -o paper.pdf
```
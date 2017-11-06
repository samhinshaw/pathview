# Pathview 

This is a fork of the popular [Bioconductor package Pathview](https://bioconductor.org/packages/release/bioc/html/pathview.html) which does not ping https://pathview.uncc.edu each time the package is loaded. 

## korg.tsv

`korg.tsv` was [last updated](https://github.com/samhinshaw/pathview/commits/master/data/korg.tsv) on November 6th, 2017

## Installation

```r
# Remove the old version of pathview
remove.packages('pathview')

# Load 'devtools' for installation from GitHub
library(devtools) # install.packages('devtools')

# Install custom pathview from GitHub
install_github('samhinshaw/pathview')
```

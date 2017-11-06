.onLoad <- function(libname, pkgname) {
  if("pathview" %in% rownames(installed.packages())) {
    data(gene.idtype.list, package ="pathview")
    data(gene.idtype.bods, package ="pathview")
    data(cpd.simtypes, package ="pathview")

    # Added Nov 6th, 2017.
    korg <- read.delim(file='data/korg.tsv', sep="\t")
    # korg = try(read.delim(file="https://pathview.uncc.edu/data/korg.tsv", sep="\t"))

    korg=as.matrix(korg)
  } else {
    data(korg, package ="pathview")
  }
  disclaimer="##############################################################################\nPathview is an open source software package distributed under GNU General Public License version 3 (GPLv3). Details of GPLv3 is available at http://www.gnu.org/licenses/gpl-3.0.html. Particullary, users are required to formally cite the original Pathview paper (not just mention it) in publications or products. For details, do citation(\"pathview\") within R. \n\nThe pathview downloads and uses KEGG data. Non-academic uses may require a KEGG license agreement (details at http://www.kegg.jp/kegg/legal.html).\n##############################################################################\n\n"
  packageStartupMessage(wordwrap(disclaimer, 80))
}

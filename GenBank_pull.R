"KM115270.1" -> gb   # Input accession number

library(ape)
read.GenBank(gb,as.character=T) -> a
vapply(unlist(a),toupper,"A",USE.NAMES=F) -> a
paste(gb,".txt",sep="") -> f
cat(a,file=f,sep="")

## Added change for git demo
# plot the time it takes to run HaplotypeCaller on a chromosome as a function
# of position - needs a parsed version of the stderr produced by 
# genotypeGVCFs

args <- commandArgs(TRUE)
myFile <- args[1]

tableRaw <- read.table(myFile, header = F)

myPos <- sapply(tableRaw[,5], FUN = function(x){
  as.numeric(strsplit(as.character(x), ':')[[1]][2])
})

myTime <- apply(tableRaw, 1, FUN = function(rw){
  if(as.character(rw[8]) == 's'){
    return(as.numeric(rw[7]) / 3600)
  }
  if(as.character(rw[8]) == 'm'){
    return(as.numeric(rw[7]) / 60)
  }
  if(as.character(rw[8]) == 'h'){
    return(as.numeric(rw[7]))
  }
})

tableUseful <- cbind(myTime, myPos)

pdf(paste0(strsplit(myFile, '\\.')[[1]][1], '.pdf'))
plot(tableUseful,
     xlab = 'time (hours)',
     ylab = 'genomic position on contig',
     main = strsplit(myFile, '\\.')[[1]][1])
dev.off()

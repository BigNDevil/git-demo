install.packages("hchinamap")
help(package="hchinamap")
dir<-tempdir()
download.file('https://czxb.github.io/br/chinadf.rda', file.path(dir, 'chinadf.rda'))
load(file.path(dir,'chinadf.rda'),verbose=T)
chinadf[1:20,]
table(chinadf$name)
library(dplyr)
library(hchinamap)
china<-chinadf%>%
  dplyr::filter(region=="China")
china
hchinamap(name=china$name,value=china$value)

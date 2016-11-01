# mappa_province <- read.csv("data\\mappaProvince2.txt", sep=";", stringsAsFactors=FALSE,na.strings="null")
# mappa_regioni <- read.csv("data\\mappa_regioni.txt", sep=";", stringsAsFactors=FALSE,na.strings="null")
# italy <- maptools::readShapeSpatial("data\\prov2011_g.shp")
# italy_reg <- maptools::readShapeSpatial("data\\reg2011_g.shp")
# devtools::use_data(mappa_province, italy, italy_reg, mappa_regioni, overwrite = T)
#
# prova <- italy_reg@data
# write.table(prova[,1:2],file="template_regioni.csv",sep=";",row.names = F, quote = F)
#
# plot(italy_reg, col=rep(2,20))
# plot(italy_reg, col=1:20)
# points(1:20,1:20,col=1:20)
# plot(1:20,1:20,col=1:20,pch=20)

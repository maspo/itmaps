# library(itmaps)
# dati <- read.csv2("~/Gestione Lead/leads/DATI_benny.csv", row.names=NULL, stringsAsFactors=FALSE, na.strings="NULL")
# i <- unique(dati$etichetta)[1]
# dati2 <- subset(dati,etichetta==i)
# disegna_cartina2(dati2,cex=2.5,cex.testo=1.5,colorspace::choose_palette())
# # debug(disegna_cartina2)
# library(maptools)
# plot(italy_reg,col=rep(1,20))
# regioni <- as.data.frame(as.matrix(italy_reg@data), stringsAsFactors=F)
# italy_reg@data$NOME_REG[2] <- "VALLE D'AOSTA"
# write.table(italy_reg@data,"mappa_regioni.txt",sep=";",dec=",")

dati <- read.csv("D:\\Users\\a444226\\Documents\\Gestione Lead\\leads\\prova_shiny.csv", header=T, sep=";", stringsAsFactors = F, dec = ",", na.strings = "null")
disegna_cartina2(dati)

dati <- read.csv("data/template_regioni.csv", header=T, sep=";", stringsAsFactors = F, dec = ",", na.strings = "null")
disegna_cartina(dati)

# disegna_cartina3 <- function(dati, colors=RColorBrewer::brewer.pal(9, "YlOrRd"), brks=classInt::classIntervals(dati$valore, n=length(colors), style="quantile")$brks, legenda = F, testi = F, ...) {
#   require(maptools)
#   ordine<-data.frame(ID=0:109)
#   dati <- merge(dati,mappa_province)
#   dati<-merge(ordine,dati,all.x=TRUE)
#   #   dati<-merge(ordine,dati)
#   italy$valore<-dati$valore
#   #   italy$totale[23,1]<--1
#   # colors <- brewer.pal(9, "YlOrRd")
#   #   brks<-classIntervals(dati$valore, n=length(colors), style="quantile")
#   #   brks<- brks$brks
#   #   plot(italy[italy$COD_PRO %in% dati$COD_PRO,],col=colors[findInterval(dati$valore,brks,all.inside=T)], axes=F,border = T)
#   #qui escludo quando non ho valori
#   lista <- !is.na(italy$valore)
#   italy <- italy[lista,]
#   par(mai=c(0,0,0,0))
#   plot(italy,col=colors[findInterval(italy$valore,brks,all.inside=T)], axes=F,border = F)
#   # if(legenda == T) legend_box("topright",legend=maptools::leglabs(round(rev(brks),0), under="Sopra", over="Meno di"), fill=rev(colors), bty="n",x.intersp = .5, y.intersp = .5, ...)
#   if(legenda == T) legend_box("topright",legend=maptools::leglabs(round(rev(brks),1), under="Sopra", over="Meno di"), fill=rev(colors), bty="n",x.intersp = .5, y.intersp = .5, ...)
#   #   italy <- unionSpatialPolygons(italy,rep(1,length(italy@data$COD_REG)))
#   if(testi) {
#     centroidi <- rgeos::gCentroid(italy,byid=T)
#     centroidiLons <- coordinates(centroidi)[,1]
#     centroidiLats <- coordinates(centroidi)[,2]
#     text(centroidiLons, centroidiLats, labels=dati$provincia[lista], col="black", cex=1)
#   }
#   italy <- maptools::unionSpatialPolygons(italy,italy@data$COD_REG)
#   plot(italy,add=T, border="black")
#   # return(brks)
# }

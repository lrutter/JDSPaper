# This is the data from reference 6 of TMM Robinson paper.
# It is the data that has been normalized by TMM, created in makeDataLibTMM.R

data = readRDS("dataTMM.rds")

baseOutDir = "/Users/lindz/JDSPaper/Data/robinson-Marioni/tmmNorm"

# Obtain R1 values
outDir = paste0(baseOutDir, "/R1")
dataSel <- data[,c(1:4,7:9)]
dataSel[,c(2:ncol(dataSel))] = log(dataSel[,c(2:ncol(dataSel))]+1)
plotScatterStatic(dataSel, outDir = outDir)
boxSel = dataSel[,-1] %>% gather(Sample,Count)
bPlot = ggplot(boxSel, aes(x=Sample, y=Count)) + geom_boxplot()
png(filename=paste0(outDir = outDir,"/boxplot.jpg"))
bPlot
dev.off()
plotScatterStatic(dataSel, threshOrth = 0.5, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 1, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 2, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 3, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 4, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, outDir = outDir, option="prediction")
plotScatterStatic(dataSel, piLevel=0.99, outDir = outDir, option="prediction")
plotScatterStatic(dataSel, piLevel=0.99999, outDir = outDir, option="prediction")
plotScatterInteractive(dataSel, xbins=20)

# Obtain R2 values
outDir = paste0(baseOutDir, "/R2")
dataSel <- data[,c(1,5:6,11)]
dataSel[,c(2:ncol(dataSel))] = log(dataSel[,c(2:ncol(dataSel))]+1)
plotScatterStatic(dataSel, outDir = outDir)
boxSel = dataSel[,-1] %>% gather(Sample,Count)
bPlot = ggplot(boxSel, aes(x=Sample, y=Count)) + geom_boxplot()
png(filename=paste0(outDir = outDir,"/boxplot.jpg"))
bPlot
dev.off()
plotScatterStatic(dataSel, threshOrth = 0.5, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 1, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 2, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 3, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 4, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, outDir = outDir, option="prediction")
plotScatterStatic(dataSel, piLevel=0.99, outDir = outDir, option="prediction")
plotScatterStatic(dataSel, piLevel=0.99999, outDir = outDir, option="prediction")
plotScatterInteractive(dataSel, xbins=20)

# Obtain K values for R1 and R2
outDir = paste0(baseOutDir, "/K")
dataSel <- data[,c(1:6)]
dataSel[,c(2:ncol(dataSel))] = log(dataSel[,c(2:ncol(dataSel))]+1)
plotScatterStatic(dataSel, outDir = outDir)
boxSel = dataSel[,-1] %>% gather(Sample,Count)
bPlot = ggplot(boxSel, aes(x=Sample, y=Count)) + geom_boxplot()
png(filename=paste0(outDir = outDir,"/boxplot.jpg"))
bPlot
dev.off()
plotScatterStatic(dataSel, threshOrth = 0.5, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 1, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, outDir = outDir, option="prediction")
plotScatterStatic(dataSel, piLevel=0.99, outDir = outDir, option="prediction")
plotScatterStatic(dataSel, piLevel=0.99999, outDir = outDir, option="prediction")
plotScatterInteractive(dataSel, xbins=15)

# Obtain L values for R1 and R2
outDir = paste0(baseOutDir, "/L")
dataSel <- data[,c(1,7:11)]
dataSel[,c(2:ncol(dataSel))] = log(dataSel[,c(2:ncol(dataSel))]+1)
plotScatterStatic(dataSel, outDir = outDir)
boxSel = dataSel[,-1] %>% gather(Sample,Count)
bPlot = ggplot(boxSel, aes(x=Sample, y=Count)) + geom_boxplot()
png(filename=paste0(outDir = outDir,"/boxplot.jpg"))
bPlot
dev.off()
plotScatterStatic(dataSel, threshOrth = 0.5, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, threshOrth = 1, outDir = outDir, option="orthogonal")
plotScatterStatic(dataSel, outDir = outDir, option="prediction")
plotScatterStatic(dataSel, piLevel=0.99, outDir = outDir, option="prediction")
plotScatterStatic(dataSel, piLevel=0.99999, outDir = outDir, option="prediction")
plotScatterInteractive(dataSel, xbins=15)


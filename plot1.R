## Proj 2 - Exploratory data analysis
## areyou76

## load data plot1.R


# Check if both data are exist. and then load the data.

if (!"neiData" %in% ls()) {
  neiData <- readRDS("./1-DataScientistCertification\ExploratoryDataAnalysis/summarySCC_PM25.rds")
}

if (!"sccData" %in% ls()) {
  sccData <- readRDS("./1-DataScientistCertification\ExploratoryDataAnalysis/Source_Classification_Code.rds")
}

head(neiData)
head(sccData)

dim(neiData) 
dim(sccData) 



par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "./figure/plot1.png", 
    width = 480, height = 480, 
    units = "px")
totalEmissions <- aggregate(neiData$Emissions, list(neiData$year), FUN = "sum")


plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in the United States from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()





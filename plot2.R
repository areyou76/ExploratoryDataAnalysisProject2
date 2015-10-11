## Proj 2 - Exploratory data analysis
## areyou76

## load data plot2.R


# Check if both data are exist. and then load the data.


if (!"neiData" %in% ls()) {
  neiData <- readRDS("./data/summarySCC_PM25.rds")
}
if (!"sccData" %in% ls()) {
  sccData <- readRDS("./data/Source_Classification_Code.rds")
}
subset <- neiData[neiData$fips == "24510", ] 


par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "./figure/plot2.png", 
    width = 480, height = 480, 
    units = "px")
totalEmissions <- aggregate(subset$Emissions, list(subset$year), FUN = "sum")


plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in Baltimore City from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()



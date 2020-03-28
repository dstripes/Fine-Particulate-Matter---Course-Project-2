# Coursera Exploratory Data Analysis Assignment 
2 # Plot 1:  
3 
 
4 # Directions  
5 
 
6 # You must address the following questions and tasks in your exploratory analysis. 
7 # For each question/task you will need to make a single plot. Unless specified,  
8 # you can use any plotting system in R to make your plot. 
9 
 
10 # Have total emissions from PM2.5 decreased in the United States from 1999 to  
11 # 2008?  
12 
 
13 # Using the base plotting system, make a plot showing the total PM2.5  
14 # emission from all sources for each of the years 1999, 2002, 2005, and 2008. 
15 
 
16 
 
17 # Step 1: Set WD and Bring in data 
18 # Note: The rds file stores, connects, and saves R objects 
19 setwd("~/Desktop") 
20 NEI <- readRDS("summarySCC_PM25.rds") # Bring in data 
21 
 
22 
 
23 # Step 2: "Clean" the Data 
24 data <- with(NEI, aggregate(Emissions, by = list(year), sum)) 
25 # Use with() to combine/sum the Emissions by year in seperate list 
26 names(data)[1] <- "Year" # Rename the Column 
27 names(data)[2] <- "Emissions" # Rename the Column 
28                                          
29 # Step 3: Create the plot 
30 png(filename= "plot1.png", width=480, height=480, units="px") # Set image format 
31 par(mar=c(5, 5, 4.1, 3)) # Adjust the Margin sizes 
32 plot(data, type= "b", pch= 15, col= "palevioletred1", yaxt="n", xaxt="n", 
33      xlab="Years", ylab= "Emissions (Tons)") 
34 title(main="Plot of Total Emmisions by Years", col.main="palevioletred1") 
35 axis(2, at=c(3E06, 4E06, 5E06, 6E06, 7E06, 8E06), cex.axis=.75) # Add Y axis labels 
36 axis(1, at= c(1999, 2002, 2005, 2008), cex.axis=.90) # Add X axis Labels 
37 dev.off() # Close Graphics and Show Plot in WD 

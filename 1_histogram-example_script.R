library(tidyverse)
final.data <- read_csv("finalData.csv")
#naming the graph and column and telling R that we're using data frame final.data
my.hist <- ggplot(final.data,aes(se.measure))
my.hist <- my.hist + geom_histogram(aes(y=..count..),binwidth = .25,fill="black",color="black")
print(my.hist)
#Adding labels
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-Esteem Level",y="Frequency")
print(my.hist)
#Adjusting x-axis and y-axis range (to change visual appearance)
my.hist <- my.hist + coord_cartesian(xlim=c(1,5),ylim=c(0,125))
print(my.hist)
#Making graph look more APA style
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour = "black", size=0.5,linetype = 'solid'),
                           axis.line.y=element_line(colour = "black", size=0.5, linetype='solid'))
print(my.hist)
#Sinking the graph lower on the y-axis 
my.hist <- my.hist + scale_y_continuous(expand=c(0,0))
print(my.hist)
#Using qplot. USE THIS VERSION SO YOU GET RID OF THE WHITE LINES

my.hist <- qplot(se.measure,data=final.data,binwidth=1, fill=I("black"),colour=I("black"))
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-Esteem Level",y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(0.5,5.5),ylim=c(0,400))
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour = "black", size=0.5,linetype = 'solid'),
                           axis.line.y=element_line(colour = "black", size=0.5, linetype='solid'))
my.hist <- my.hist + scale_x_continuous(breaks=seq(0.5,5.5,by=1))
my.hist <- my.hist + scale_y_continuous(breaks=seq(0,400,by=25),expand = c(0,0))
print(my.hist)
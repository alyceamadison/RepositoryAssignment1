#PART 2: STEP 1
MyData = read.csv("~/Desktop/BIOL 432/Assignment 1/biol432/measurements.csv")
print(MyData)

#PART 2: STEP 2

MyData$Volume=pi*(((MyData$Limb.Width/10/2)^2)*MyData$Limb.Length)
print(MyData$Volume)

#PART 3: GRAPH MAKING
library(ggplot2)
qplot(x=Limb.Width, y=Limb.Length, data=MyData,
      size=I(3), colour=I("navy blue"),
      xlab="Species Limb Width", ylab="Species Limb Length", main="Relationship Between Species' Limb Length and Width",
      
      
      ) + theme_pubworthy()

theme_pubworthy <- function (base_size = 12, base_family = "") {
  theme_classic(base_size = base_size, base_family = base_family) %+replace% 
    theme(
      axis.text = element_text(colour = "black"),
      axis.title.x = element_text(size=18),
      axis.text.x = element_text(size=12),
      axis.title.y = element_text(size=18,angle=90),
      axis.text.y = element_text(size=12),
      axis.ticks = element_blank(), 
      panel.background = element_rect(fill="white"),
      panel.border = element_blank(),
      plot.title=element_text(face="bold", size=24),
      legend.position="none"
    ) 
}

pdf("LimbRelationshipGraph.pdf")
qplot(x=Limb.Width, y=Limb.Length, data=MyData,
            size=I(3), colour=I("navy blue"),
            xlab="Species Limb Width", ylab="Species Limb Length", main="Relationship Between Species' Limb Length and Width",
            
            
) + theme_pubworthy()

dev.off()

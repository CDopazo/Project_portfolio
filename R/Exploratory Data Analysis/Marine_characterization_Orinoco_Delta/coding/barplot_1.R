library(ggplot2)
  g<-ggplot(taxa_df, aes(reorder(taxa, number),number)) +
    geom_bar(stat = "identity", fill="darkgreen", color= "black") +
    coord_flip() +
    ylab("Registered number") +
    xlab(" ") +
    geom_text(aes(label=number), position=position_dodge(width=0.9), hjust=-0.25)
  
  print(g)
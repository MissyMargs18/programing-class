#read the input data
stat1_interactions_new <- read.csv("stat1_interactions.tsv", sep="\t")

#extract the first two and the last column
stat_small_new <- stat1_interactions_new[,c(1,2,15)]

#extract the interactions with more than 0.5 score
stat_small_new_filtered <- subset(stat_small_new, combined_score >= 0.5)

#write the filtered interactions in to a file
write.table(stat_small_new_filtered, "~/Desktop/statsmallnewfiltered.txt", sep = "\t", quote = FALSE, row.names = FALSE)

#print the score distribution graph
png("~/Desktop/statsmallnew.png")
plot(stat_small_new_filtered$combined_score)
dev.off()

message("Script ran successfully, all outputs are in the working directory")

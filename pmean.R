# 1.
pmean <-  function (directory, pollutant, id = 1:332){
  csvFile <- unzip(paste0(directory,".zip"))
  all_means <- vector()
  for(i in id){
    all_means <- c(all_means,mean(read.csv(csvFile[i])[[pollutant]],na.rm = T))
  }
  return (mean(all_means,na.rm = T))
}
# 2.
complete <-  function (directory, id = 1:332){
  csvFile <- unzip(paste0(directory,".zip"))
  new_df <- data.frame()
  for(i in id){
    cur_csv <- read.csv(csvFile[i])
    new_df <- rbind(new_df,data.frame(id = i, nobs = sum(!is.na(rowSums(cur_csv[,2:3])))))
  }
  return (new_df)
}
# 3.
corr <-  function (directory, threshold = 0){
  csvFile <- unzip(paste0(directory,".zip"))
  counter <- length(csvFile)
  cor_s <- vector('numeric')
  for(i in 1:counter){
    cur_csv <-  read.csv(csvFile[i])
    if (sum(!is.na(rowSums(cur_csv[,2:3]))) > threshold){
      cor_s <- c(cor_s,cor(cur_csv[["sulfate"]],cur_csv[["nitrate"]], use = "complete.obs" ))
    }
  }

  return(cor_s)
}

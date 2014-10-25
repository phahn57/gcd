run_analysis<-function(){
  library(stringr)
  library(reshape2)
  ## Reading features
    features<-read.table("features.txt",sep=" ")
    
    ## Reading observation data from test objects
      test_observ<-read.table("./test/X_test.txt",sep="")
    ## Reading activity number(1-6)
      test_activity<-read.table("./test/Y_test.txt",sep="")
    ## Reading subjects(9 subjects)
      test_subject<-read.table("./test/subject_test.txt",sep="")

    ## Reading data from training objects
      train_observ<-read.table("./train/X_train.txt",sep="")
    ## Reading activity number(1-6)
      train_activity<-read.table("./train/Y_train.txt",sep="")
    ## REading subjects(21 subjects)
      train_subject<-read.table("./train/subject_train.txt",sep="")

        ## Using row[,2] of features as column names
          colnames(test_observ)<-features[,2]
          colnames(train_observ)<-features[,2]
        ## Adding column subject
          test_observ$subject<-test_subject[,1]
          train_observ$subject<-train_subject[,1]
        ## Adding column with activity number
          test_observ$activity<-test_activity[,1]
          train_observ$activity<-train_activity[,1]
    
            ## Concatenate both datasets
              ##from here number in name indicating question of project
              data_total1<-rbind(test_observ,train_observ)
            ## Rename std with standdev 
            names(data_total1)<-str_replace(names(data_total1),"std","standdev")
    
            ## subset of volumns containing mean or std
            
              data_total2<-data_total1[,c(grep("mean|standdev",names(data_total1)),562,563)]
                ## giving descriptive names to activity
              data_total2$activity<-factor(data_total2$activity,levels=1:6,labels=c("walking","walking_upstairs","walking_downstairs","sitting","standing","laying"))
                
               ## make all column names lower case
                names(data_total2)<-tolower(names(data_total2))
              ## removing () and - from names          
                names(data_total2)<-gsub("-","",names(data_total2))
                names(data_total2)<-gsub("[(]","",names(data_total2))
                names(data_total2)<-gsub("[)]","",names(data_total2))
                
                ## descriptive names for columns... change t to time
                names(data_total2)<-str_replace(names(data_total2),"^t","time")
                ## descriptive names for columns... change f to freq
                names(data_total2)<-str_replace(names(data_total2),"^f","freq")
                ## summarizing data
                ## building resulting dataframe
                molten<-melt(data_total2, id.vars=c("subject","activity"))
                result<- dcast(molten,subject+activity~variable,mean)
                ## write.table(result,file="run_analysis.txt",row.names=FALSE)   
    
}
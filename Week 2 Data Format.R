-----
title : Data Format 
Name: Murtip Gajjar 
Date : Apr 2 
----- 





## Data Type and Data Format ##
# Basic data types are Numeric, Integer, Complex, Logical, Character
# Numerics - Decimal values are called numerics
library(formattable)
# Loading the objects in myobjects.RData into the workspace using the load() function
load(file = "data/myobjects.RData")
#running is() function to make sure all the objects are back to the workspace
ls()
# mean time
mean(club.df$time)

# mean drinks
mean(club.df$drinks)

#the percetages of the students in terms of gender
percent(prop.table(table(club.df$gender)))

#the percentages of the students in the three clubs
percent(prop.table(table(club.df$club)))

#the percentages of students who likes different types of fruits
percent(prop.table(table(a$favorite.fruit)))

# Saving the objects a, b, c, and club.df to an .RData file called “myobjects.RData” in the data folder using function save().
save(a,b, c,club.df,
     file =  "data/myobjects.RData")



#creating objects a, b, and c
a <- data.frame(
  
  "name" =c("john","smith","mary","lilian"),
  "sex" =c("m","m","f","f"),
  "age" =c("22","25","17","11"),
  "favorite.fruit" =c("orange","apple","mango","banana")
)
b<- table(a$age)
c<-table(a$favorite.fruit)

# using function is() to check whether the objects are stored in the workspace
is(a)
is(b)
is(c)


#using fuction read.table() to load the data from the given web address and call it club.df
club.df <- read.table(file = 'http://nathanieldphillips.com/wp-content/uploads/2015/12/club.txt.',
                      sep = '\t',
                      header = TRUE)


#Using function write.table() and saving the dataframe as a tab–delimited text file called club.txt to the data folder created above
write.table(x = club.df,
            file = "data/club.txt",
            sep = "\t") # Make the columns tab-delimited


# Saving the objects a, b, c, and club.df to an .RData file called “myobjects.RData” in the data folder using function save().
save(a,b, c,club.df,
     file =  "data/myobjects.RData")


#Clearing the workspace using the rm(list = ls()) function.
rm(list = ls())

# running the ls() function to make sure all the objects are gone
ls()




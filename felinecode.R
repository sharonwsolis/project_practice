#enter a comment
#comments are useful for my code to be more easily read by me and my friends

#initiate or create new variable called cats
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))

#write cats to new file called feline-data.csv
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)

#look at specific columns
cats$weight
cats$coat

# say we discovered that the scale weighs two kgs light:
cats$weight +2

#Produce pretty sentences
paste("My cat is", cats$coat)

#add weight and coat columns
cats$weight + cats$coat

#add weight column to each other
cats$weight + cats$weight

#examine type of weight column within cats
typeof(cats$weight)

typeof(3.14)
typeof(1L)
typeof("L1")
typeof(1+1i)
typeof(TRUE)
typeof('banana')

#create new vector called my_vector
my_vector <- vector(length = 3)
my_vector

#create new vector with character data types
another_vector <- vector(mode = 'character',length=3)
another_vector

#create string of characters within vector
str(another_vector)
str(my_vector)

#looking at specific values within cat
cats[1]
cats$coat
cats[[1]]
cats["coat"]
cats[1,1]
cats[,1]
cats[1,]

#initiate new variable age
age <- c(2,3,5)
age
cbind(cats, age)

#realized this gave me an error
#age <- c(2,3,5,12)
#age
#cbind(cats, age)

nrow(cats)
length(age)
newRow <- list("tortoiseshell",3.3, TRUE, 9)
cats <- rbind(cats, newRow)
cats

levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))

#remove row
cats[-4, ] #display with removal of 4th row
cats[4,] #display only 4th row
na.omit(cats)
cats <- na.omit(cats)

#remove column
cats[, -4]
drop <- names(cats) %in% c("age")
drop
cats[,!drop]

#combined cats with itself appending it by rows

cats <- rbind(cats,cats)
cats

#"reset" row indices or names
rownames(cats) <- NULL

#initiate or create new variable called cats
# cats <- data.frame(coat = c("calico", "black", "tabby"),
#                    weight = c(2.1, 5.0, 3.2),
#                    likes_string = c(1,0,1))
#challenge 2
df <- data.frame(first_name = c("sharon", "mary", "katja"),
                 last_name = c("solis", "donovan", "setljmann"),
                 lucky_number = c(7,8,9))
coffee <- c(TRUE, FALSE, TRUE)
df <- cbind(df,coffee)

gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)

typeof(gapminder$year)
str(gapminder$country)

length(gapminder)
typeof(gapminder)

nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)

#preview top of dataset
head(gapminder)
tail(gapminder)

#find random sample within gapminder dataset
gapminder[sample(nrow(gapminder), 5), ]


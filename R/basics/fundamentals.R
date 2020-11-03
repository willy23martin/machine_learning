#String values:
string <- "Something"
#Numeric values:
m <- pi
m <- 2L
#Boolean values:
b <- TRUE
b <- FALSE
b <- T
b <- F
# To know more about the type of variable
class(string)

#To install packages
install.packages("plotly")
#To get help about function or utility or library
?ggplot2
help("poisson")

# Convert types of data to others
as.numeric("245")
as.logical(1)
as.numeric(FALSE)
as.numeric("898cm") #N/A

# Comparators:
7 < 5
8 > 3
3 <= 1
2 >= 4
3 == 3
3 != 6
3 > 1 & 2 > 0
3 < 9 | 0 > 2

# Vectors:
y <- vector()
x_numeric <- c(1,5,6,87,6)
x_character <- c("Stirng A", "String B")
x_logical <- c(TRUE, FALSE, FALSE, TRUE)
as.character(x_numeric)
# Operations of vectors:
length(x_logical)
x_numeric[1:2]
x_numeric[4]
x_numeric[1:6]
x_logical[x_logical!=FALSE]

# Vector's arithmetic operations:
x_numeric + x_numeric
x_numeric * x_numeric
x_numeric %*% x_numeric # Producto escalar
max(x_numeric)
which.max(x_numeric)
sum(x_numeric)
mean(x_numeric)
var(x_numeric)
sd(x_numeric)
log(x_numeric)
log10(x_numeric)
log2(x_numeric)
exp(x_numeric)
sin(x_numeric)
cos(x_numeric)
tan(x_numeric)
sqrt(x_numeric)

# Sequences:
10:90
seq(from=5, to=20, by=3)
sample(10)
rnorm(3, mean=5, sd=2)
runif(10, min=5, max=10)

#Lists:
n <- list(humidity = c(10,30,37), metrics=c("C.", "F.", "K."))
n$humidity[2]
n$humidity[2]
concat(n$humidity[2], n$metrics[2])
# Factors:
?factor
f <- factor(c("H", "F", "I", "M"))
f
as.character(f)
<<<<<<< HEAD
rm(y)
=======
>>>>>>> 527e7b5deeb95c57aa766dfee51174960a49a6bf

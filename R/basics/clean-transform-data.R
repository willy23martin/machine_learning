# Clean and Transform the Data:

is.na(BER_data_frame$SNR)
x <- BER_data_frame
x[!is.na(x$SNR)]

values <- c(89, NA, 90, NA, 25, NA, 104)
mean(values, na.rm = TRUE)

sum(is.na(x))
summary(x)

# Replace NA for values
x$SNR[is.na(x$SNR)] <- (
  2^(x$Capacity/x$BW)-1
)

# Ignore NA - loose information:
x <- na.omit(x)

# Outliers - Valores atipicos:
boxplot(x)
iqr <- IQR(x$SNR)
q2 <- quantile(x$SNR, 0.75)
sum(x$SNR > q2+1.5*iqr)
x[x$SNR > q2+1.5*iqr]

# Categorical Variables:
data("Titanic")
titanicData <- as.data.frame(Titanic)
titanicData$Class_num <- ifelse(titanicData$Class == "1st",1,
                                ifelse(titanicData$Class=="2st",2,
                                       ifelse(titanicData$Class=="3rd",3,4))
                                )
titanicData$Class_sex <- ifelse(
  titanicData$Sex=="Male", 0,1
)

# One-hot enconding: transform categorical variables to numerical values
install.packages("dummies")
library(dummies)
## Binary transformation of the columns
titanicBinaryData <- dummy.data.frame(titanicData)

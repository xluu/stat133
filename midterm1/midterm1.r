# Please load in the dataset included in the midterm1 directory (). 
# It will be required to perform the following tasks. The dataset includes data for houses
# in the city of Berkeley.
load("SFHousing-2.rda")
# calculate the mean lot size (lsqft) of houses in Berkeley. Store it as the
# variables <mean.lsqft>.

# mean.lsqft <- your code here

mean.lsqft <- mean(housing$lsqft, na.rm=T)

# How many unique area codes are there in the dataset?  Store them in the variable
# <n.zipcode>

n.zipcode <- (length(unique(housing$zip)))

# n.zipcode <- your code here

# For each house in the dataset, calculate how large the house is relative to
# the lot size, i.e. square foot of house over square foot of lot.
# Store it in the variable <rel.sqft>. 
# rel.sqft <- your code here

rel.sqft <- housing$bsqft/housing$lsqft


# Please create two new data frames with the following two subsets
# and store them with the indicated names:
# 1) houses whose bsqft is strictly greater than <mean.bsqft>:  <bsft.greater>
# 2) houses whose bsqft is less than or equal to  <mean.bsqft>: <bsqft.less>

# bsqft.greater <- your code here
# bsqft.less <- your code here

 bsqft.greater <- housing[housing$bsqft > mean (housing$bsqft, na.rm=T),]
bsqft.less <- housing[housing$bsqft < mean(housing$bsqft,na.rm =T),]

# For each of your subsets, create a vector giving the price of each house. Name
# these variables <rooms.greater.price> and <rooms.less.price>.
# rooms.greater.price <- your code here
# rooms.less.price <- your code here
 
rooms.greater.price <- bsqft.greater$price
rooms.less.price <- bsqft.less$price


# Please implement the function priceByRooms. Your function should take the
# following arguments:
#
# <room.range>: a numeric vector of length 2 whose first and second observations
#   give the minimum and maximum number of rooms to consider
# <br>: a numeric vector giving the number of bedrooms for each observation
# <prices>: a numeric vector giving the price of each observation associated
#   with <br>
#
# Your function should return the average of <prices> for all observations with
# <br> in the range (inclusive) specified by <room.range>

priceByRooms <- function(room.range, br, prices) {

   room.range <- c(min(housing$br), max(housing$br))
   br <-  hosuing$br
   prices <- housing$price[housing$br]
   Ob <- c (room.tange, br, prices)
   return (ob)
}


# Please create a plot of house price (y-axis) against br (x-axis). Your plot
# should include the following features:
# 1) a title "Housing price vs Number of Rooms"
# 2) axis labels: "Price" and "#rooms"
# 3) plotting character set to 19

plot (housing$br~housing$price, pch = 19, xlab ="Price", ylab = "#room", main = "Housing price vs Number of rooms")

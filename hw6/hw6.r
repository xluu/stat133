# Homework 6
# Stat 133, Lec 2, Spring 2015
# Due : Friday March 20th by 5 pm

# Review the slides on simulations for this assignment.

# Consider the following model on use of a new drug:
# We have a population of doctors, population size : <n.doctors>
# Every doctor has either adopted the use of a new drug, or not (0/1 status)
# Now write a function that runs a simulation for a period of :
# <n.days> where
# - every day exactly two _random_ doctors meet
# - if one has adopted but the other one has not then the
#   holdout adopts the use of the drug with probability p
# Return a matrix that shows for each day which doctors have adopted
# the use of the drug.

# Input varibles are
# <n.days> : the number of days the simulation should be run for
# <n.doctors> : total number of doctors 
# <initial.doctors> : a 0/1 vector of length <n.doctors>, 1 for adopters
# <p> : the probability that the non-adopter adopts the drug.

# Ouput variable
# <has_adopted> : matrix with <n.doctors> rows and <n.days> columns
#                 i.e. one row for each doctor
#                 the entries are 0 for days where the doctor is a
#                 non-adopter, else 1 (so once a row turns to 1 it stays as 1).

sim.doctors <- function(initial.doctors, n.doctors, n.days, p){

  # Set up the output variable, define it as a matrix then use initial.doctors
  # to set the first column (day)
  has_adopted <- matrix(, nrow = n.doctors, ncol = n.days)
  has_adopted[, 1] <- initial.doctors
  
  # Run a simulation for <n.days> (use a for loop).  In the loop:
  # 1) pick two random doctors
  # 2) check if one has adopted the other hasn't
  # 3) convert the non-adopter with probability p
  for (i in 2:n.days){
    doctor <- sample(1:n.doctors, 2)
    if ((has_adopted[doctor[1], i-1] == 1) && (has_adopted[doctor[2], i-1] == 0)){
      result <- has_adopted[,i-1]
      result[doctor[2]] <- sample(c(0,1), 1, replace=T, c(1-p, p))
      has_adopted[, i] <- result
    } else if ((has_adopted[doctor[2], i-1] == 1) && (has_adopted[doctor[1], i-1] == 0)){
      result <- has_adopted[,i-1]
      result[doctor[1]] <- sample(c(0,1), 1, replace=T, c(1-p, p))
      has_adopted[, i] <- result
    } else{
      has_adopted[, i] <- has_adopted[, i-1]
    }
  }

  # return the output
  return(has_adopted)

}

# When you test your function you have to generate <initial.doctors> and
# pick values for the other input parameters.

set.seed(42)
# Generate a value for <initial.doctors> that has 10% 1s and 90% 0s.
# Run your function for at least 5 different values of <p> and plot
# on x-axis: days,
# on y-axis : the number of doctors that have already adopted the drug, on that day
# Put all 5 lines in one figure (e.g. use first plot() then lines() for the subsequent lines)

p1 = sim.doctors(sample(c(0,1), 100, c(0.9, 0.1), replace = T), 100, 100, 0.1)
p2 = sim.doctors(sample(c(0,1), 100, c(0.9, 0.1), replace = T), 100, 100, 0.2)
p3 = sim.doctors(sample(c(0,1), 100, c(0.9, 0.1), replace = T), 100, 100, 0.4)
p4 = sim.doctors(sample(c(0,1), 100, c(0.9, 0.1), replace = T), 100, 100, 0.6)
p5 = sim.doctors(sample(c(0,1), 100, c(0.9, 0.1), replace = T), 100, 100, 0.8)
plot(x=1:ncol(p1), y=apply(p1, 2, sum), type ="l", xlab="days", 
     ylab = "Number of doctors that adopted the drug",
     main = "Simulation of period adopted drug", col='hotpink')
lines(x=1:ncol(p2), y = apply(p2, 2, sum), col="blue")
lines(x=1:ncol(p3), y = apply(p3, 2, sum), col="purple")
lines(x=1:ncol(p4), y = apply(p4, 2, sum), col="red")
lines(x=1:ncol(p5), y = apply(p5, 2, sum), col="green")

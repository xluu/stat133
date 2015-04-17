#################################################################################
#### BML Simulation Study

#### Put in this file the code to run the BML simulation study for a set of input parameters.
#### Save some of the output data into an R object and use save() to save it to disk for reference
#### when you write up your results.
#### The output can e.g. be how many steps the system took until it hit gridlock or
#### how many steps you observered before concluding that it is in a free flowing state.


source("bml_functions.r")
#question1 & 2 (for observation)
bml.sim(100,100,0.2)
bml.sim(100,100,0.2)
bml.sim(100,100,0.2)
bml.sim(100,100,0.2)
bml.sim(100,100,0.2)

bml.sim(100,100,0.40)
bml.sim(100,100,0.40)
bml.sim(100,100,0.40)
bml.sim(100,100,0.40)
bml.sim(100,100,0.40)

bml.sim(100,100,0.8)
bml.sim(100,100,0.8)
bml.sim(100,100,0.8)
bml.sim(100,100,0.8)
bml.sim(100,100,0.8)


#question 3
bml.sim(100,100,0.35)
bml.sim(100,100,0.35)
bml.sim(100,100,0.35)
bml.sim(100,100,0.35)
bml.sim(100,100,0.35)

bml.sim(100,100,0.38)
bml.sim(100,100,0.38)
bml.sim(100,100,0.38)
bml.sim(100,100,0.38)
bml.sim(100,100,0.38)

bml.sim(100,100,0.39)
bml.sim(100,100,0.39)
bml.sim(100,100,0.39)
bml.sim(100,100,0.39)
bml.sim(100,100,0.39)

#experiment
bml.sim(1,1,0.3)
bml.sim(1,1,0.3)
bml.sim(1,1,0.3)

bml.sim(2,2,0.3)
bml.sim(2,2,0.3)
bml.sim(2,2,0.3)

bml.sim(10000,1,0.3)
bml.sim(10000,1,0.3)
bml.sim(10000,1,0.3)

bml.sim(1,10000,0.3)
bml.sim(1,10000,0.3)
bml.sim(1,10000,0.3)

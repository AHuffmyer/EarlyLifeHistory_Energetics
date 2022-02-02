##########################################
# prerequisites:
#
# install the CRAN package "corpcor" 
# (version >= 1.4.4)
# this can be done, e.g., by running 
#    install.packages("corpcor")
# from within R
##########################################



# shrinkage covariance estimator 
# compared with usual unbiased sample estimator


##########################################
#  Example script (to be run in R)       #
##########################################


# small data data set
# with 10 variables (columns)
# and 6 repetitions (rows)

X <- as.matrix(read.table("Mcap2020/Data/Integration/smalldata.txt"))  # tab-delimited data
dim(X) # 6x10 matrix

install.packages("corpcor")

# load "corpcor" R package
library("corpcor")               


# estimate 10x10 covariance matrix
s1 <- cov(X)          # usual unbiased sample estimate
s2 <- cov.shrink(X)   # shrinkage estimate
                      # shrinkage intensity variances: 0.6015
                      # shrinkage intensity correlations: 0.7315
                      

# compare ranks and conditions
rank.condition(s1)    # rank=5, condition=Inf
rank.condition(s2)    # rank=10, condition=4.5130


# compare positive definiteness
is.positive.definite(s1)   # FALSE
is.positive.definite(s2)   # TRUE


# which estimator can be inverted?
solve(s1)  # throws error because s1 is singular
solve(s2)  # no problem at all (s2 has full rank and is positive definite)


##################################
##################################


# large data data set
# with 100 variables (columns)
# and 20 repetitions (rows)

X <- as.matrix(read.table("Mcap2020/Data/Integration/largedata.txt"))  # tab-delimited data
dim(X) # 20x100 matrix

# estimate 100x100 covariance matrix
s1 <- cov(X)          # usual unbiased sample estimate
s2 <- cov.shrink(X)   # shrinkage estimate
                      # shrinkage intensity variances: 0.7772
                      # shrinkage intensity correlations: 0.8851
                      

# compare ranks and conditions
rank.condition(s1)    # rank=19, condition=Inf
rank.condition(s2)    # rank=100, condition=2.8671


# compare positive definiteness
is.positive.definite(s1)   # FALSE
is.positive.definite(s2)   # TRUE


# which estimator can be inverted?
solve(s1)  # throws error because s1 is singular
solve(s2)  # no problem at all (s2 has full rank and is positive definite)



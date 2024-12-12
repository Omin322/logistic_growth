# Logistic Growth
R scripts for a reproducible analysis of logistic growth

1.)The R files contain code to allow analysis and plotting of the logistic growth model of a given population, using the population at time 0 (N0), intrinsic rate of growth (r), and carrying capacity (K). These parameters can be estimated by fitting 2 linear models to a dataset of population size over time. To estimate r and N0, a subset of the data including the exponential growth phase is used. In this case, N is log transformed. By fitting this linear model, the exponent of the intercept can be used as an estimate of N0, and the slope as an estimate of r. The second model utilises a subset of the data where carrying capacity has been reached, and growth has stagnated. By fittng a linear model to this data, the intercept can be used as an estimate for K. By using these variables, a model of he growth rate can be plotted. The data used for this specific model is contained within the experiment.csv file. By running the two initial models, parameter estimates are as follows: 
K=59790000000
r=0.0100086
N0=exp(6.8941709)
Using these estimates, a model can be plotted alongside the data. This model can be used to estimate population size at a given time, or time taken to reach a given population size. At 4980 minutes, the model gives a population size of 5.979e+10.

2.)Exponential growth can be calculated with the formula N(t) = N0(1+r)^t. Using estimates from the anaysis, and looking for population size at time 4980, the equation becomes exp(6.8941709)*((1+0.0100086)^4980)=3.411596e+24. Therefore, N at minute 4980 is equal to 3.411596e+24. Utilising the linear model, the resulting N at time 4980 in this data set under logistic growth would be 5.979e+10. This notable difference in size is due to the lack of carrying capacity in the exponential growth equation.

3.) ![Logistic vs Exponential Growth](https://github.com/Omin322/logistic_growth/blob/dev/expovlogplot.png)

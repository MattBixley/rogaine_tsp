library(salesperson)
library(ggplot2)

set.seed(1)

x = generateClusteredNetwork(n.points = 200L, n.cluster = 3L)
res = runSolver("nn", x)
print(res)
print(autoplot(x, path = res$tour, close.path = TRUE))

#n order to run the exact CONCORDE TSP solver we first need to download the executable for our operating system. Say, 
#the path to the executable is /path/to/concorde (on a linux system) or C:/path/to/concorde (on a windows system). We need to pass this path to runSolver in 
#order to call CONCORDE.

res = runSolver("concorde", x, solver.path = "/path/to/concorde")
print(res)
print(autoplot(x, path = res$tour, close.path = TRUE))

devtools::install_github("jakobbossek/salesperson")
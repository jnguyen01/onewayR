
# onewayR


The goal of onewayR is to provide users the ability to easily run the one-way ANOVA test

## Installation

You can install the released version of onewayR with:

``` r
if(!require("remotes")){ }
install.packages("remotes")
library(remotes)
}

remotes::install.pgithub("onewayR")
```

## Example

You can perform one-way ANOVA using

``` r
library(onewayR)
## basic example 

anova <- oneway(y ~ x, data)
plot(anova)
summary(anova)



```


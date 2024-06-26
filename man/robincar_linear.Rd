% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robincar-linear.R
\name{robincar_linear}
\alias{robincar_linear}
\title{Covariate adjustment using linear working model}
\usage{
robincar_linear(
  df,
  treat_col,
  response_col,
  car_strata_cols = NULL,
  covariate_cols = NULL,
  car_scheme = "simple",
  adj_method = "ANOVA",
  contrast_h = NULL,
  contrast_dh = NULL
)
}
\arguments{
\item{df}{A data.frame with the required columns}

\item{treat_col}{Name of column in df with treatment variable}

\item{response_col}{Name of the column in df with response variable}

\item{car_strata_cols}{Names of columns in df with car_strata variables}

\item{covariate_cols}{Names of columns in df with covariate variables. **If you want to include the strata variables as covariates also, add them here.**}

\item{car_scheme}{Name of the type of covariate-adaptive randomization scheme. One of: "simple", "pocock-simon", "biased-coin", "permuted-block".}

\item{adj_method}{Name of linear adjustment method to use. One of: "ANOVA", "ANCOVA", "ANHECOVA".}

\item{contrast_h}{An optional function to specify a desired contrast}

\item{contrast_dh}{An optional jacobian function for the contrast (otherwise use numerical derivative)}
}
\value{
See value of \link[RobinCar:robincar_glm]{RobinCar::robincar_glm()}, this function is a wrapper
using a linear link function.
}
\description{
Estimate treatment-group-specific response means and (optionally)
treatment group contrasts using a linear working model for continuous outcomes.
}
\details{
* Adjustment method "ANOVA" fits a linear model with formula `Y ~ A` where
`A` is the treatment group indicator and `Y` is the response.
* "ANCOVA" fits a linear model with `Y ~ A + X` where `X` are the variables
specified in the `covariate_cols` argument.
* "ANHECOVA" fits a linear model with `Y ~ A*X`, the main effects and treatment-by-covariate
interactions.
}

# Takes a dataset and grabs the country/year of interest
grabCountry <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
  #gdp <- dat$pop * dat$gdpPercap
  
  #new <- cbind(dat, gdp=gdp)
  new <- cbind(dat)
  return(new)
}
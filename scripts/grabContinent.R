# Takes a dataset and grabs the continent/year of interest
grabContinent <- function(dat, year=NULL, continent=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(continent)) {
    dat <- dat[dat$continent %in% continent,]
  }
  #gdp <- dat$pop * dat$gdpPercap
  
  #new <- cbind(dat, gdp=gdp)
  new <- cbind(dat)
  return(new)
}
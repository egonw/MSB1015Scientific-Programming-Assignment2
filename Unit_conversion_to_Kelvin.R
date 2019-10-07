# This function detects, if a unit is not given in kelvin and converts it from either Celsius or Fahrenheit 
# to kelvin. This makes it easier to compare boilingpoints to each other and build a regression model.
Unit_conversion_to_Kelvin <- function (r) {
  # control for boilingpoint units: convert all to kelvin
  r$bp[r$bpUnitLabel == "degree Celsius"] <- r$bp[r$bpUnitLabel == "degree Celsius"] + 273.15
  r$bpUnitLabel[r$bpUnitLabel == "degree Celsius"] <- "kelvin"
  r$bp[r$bpUnitLabel == "degree Fahrenheit"] <- (r$bp[r$bpUnitLabel == "degree Fahrenheit"]-32)*5/9 + 273.15
  r$bpUnitLabel[r$bpUnitLabel == "degree Fahrenheit"] <- "kelvin"
  return(r)
}
Unit_conversion_to_Kelvin <- function (r) {
  # control for boilingpoint units: convert all to kelvin
  r$bp[r$bpUnitLabel == "degree Celsius"] <- r$bp[r$bpUnitLabel == "degree Celsius"] + 273.15
  r$bpUnitLabel[r$bpUnitLabel == "degree Celsius"] <- "kelvin"
  r$bp[r$bpUnitLabel == "degree Fahrenheit"] <- (r$bp[r$bpUnitLabel == "degree Fahrenheit"]-32)*5/9 + 273.15
  r$bpUnitLabel[r$bpUnitLabel == "degree Fahrenheit"] <- "kelvin"
  return(r)
}
# Description
# Write two functions, one that converts standard time to decimal time and one that converts decimal time to standard time.
# One hour has 100 minutes (or 10,000 seconds) in decimal time, yet its duration is the same as in standard time. Thus a decimal 
# minute consists of 36 standard seconds, which is 1/100 of an hour.
# Working time is usually rounded to integer decimal minutes. Thus one standard minute equals 0.02 decimal hours, while two 
# standard minutes equal 0.03 decimal hours and so on.
# The terms "normal" and "standard" time are considered synonymous in this kata, just like the terms "decimal" and "industrial" 
# time.
# toIndustrial(time) should accept either the time in minutes as an integer or a string of the format "h:mm". Minutes will 
# always consist of two digits in the tests (e.g., "0:05"); hours can have more. Return a double that represents decimal hours 
# (e.g. 1.75 for 1h 45m). Round to a precision of two decimal digits - do not simply truncate!
# toNormal(time) should accept a double representing decimal time in hours. Return a string that represents standard time in the 
# format "h:mm".
# There will be no seconds in the tests. We'll neglect them for the purpose of this kata.
# Flavor text (click to expand)
# Examples:
# toIndustrial(1) => 0.02
# toIndustrial("1:45") => 1.75
# toNormal(0.33) => "0:20"
# Please leave a rating if you liked this kata!

toIndustrial <- function(time) {
  if (is.numeric(time)) {
    h <- floor(time / 60)
    m <- time %% 60
  } else if (is.character(time)) {
    parts <- strsplit(time, ":")[[1]]
    h <- as.integer(parts[1])
    m <- as.integer(parts[2])
  }
  result <- (h + m / 60)
  round(result, digits = 2)
}

toNormal <- function(time) {
  h <- floor(time)
  m_i <- (time - h) * 60
  m_n <- round(m_i)
  if (m_n == 60) {
    h <- h + 1
    m_n <- 0
  }
  
  if (h == 0) {
    sprintf("0:%02d", m_n)
  } else {
    sprintf("%d:%02d", h, m_n)
  }
}
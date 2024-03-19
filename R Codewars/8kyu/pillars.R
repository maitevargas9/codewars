# Description
# There are pillars near the road. The distance between the pillars is the same and the width of the pillars is the same. 
# Your function accepts three arguments:
# number of pillars (≥ 1);
# distance between pillars (10 - 30 meters);
# width of the pillar (10 - 50 centimeters).
# Calculate the distance between the first and the last pillar in centimeters (without the width of the first and last pillar).

pillars = function(num_of_pillars, distance, width) {
  total_distance <- 0
  if(num_of_pillars < 2) {
    total_distance = 0
  }
  else if(num_of_pillars < 3) {
    total_distance = distance * 100
  }
  else {
    total_distance = ((num_of_pillars-2) * width) + ((num_of_pillars-1) * (distance*100))
  }
  return(total_distance)
}
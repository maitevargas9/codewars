var min = function(list) {
  list.sort();
  return Math.min(...list);
}

var max = function(list) {
  list.sort();
  return Math.max(...list);
}
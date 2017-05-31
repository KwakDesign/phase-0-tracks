var colors = ["red", "blue", "yellow", "green"];
var names = ["Ed", "Bob", "Ted", "Eric"];
colors.push("orange");
names.push("Joe");

var horse = {};
for (var i = 0; i < names.length; i++){
  horse[names[i]] = colors[i];
}
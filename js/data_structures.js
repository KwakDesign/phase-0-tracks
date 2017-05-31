// Created colors array and names array
var colors = ["red", "blue", "yellow", "green"];
var names = ["Ed", "Bob", "Ted", "Eric"];
// Used .push method to add in new values to each array
colors.push("orange");
names.push("Joe");

// Created horse object and used a for loop to add the values from the 2 arrays into the object.
var horse = {};
for (var i = 0; i < names.length; i++){
  horse[names[i]] = colors[i];
}

console.log(horse);
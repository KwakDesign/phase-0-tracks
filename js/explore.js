// create a function called reverse string that takes a string as a parameter.
  // create an new empty variable which will eventually store the updated reversed string.
  // create a for loop where it's counter variable starts at the last index position of the string, while the index position is greater than 0, move backwards through each index position.
    // store each character at the index position into the empty variable.
    // print the variable with the reversed string.

function reverseString(str) {
  var new_str = "";
  for (i = str.length - 1; i >= 0; i--) {
  new_str += str[i];
  }
  return new_str
}
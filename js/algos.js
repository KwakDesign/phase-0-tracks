// array to be used as an argument for the longestWord function.
var this_arr = ["long phrase","longest phrase","longer phrase"];
// objects to be used as arguments for the keyValueMatch function.
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};

// create function called longestWord which takes an array as an argument and returns the longest word.
function longestWord(arr) {
  // create empty string variable that will be used for comparison.
  var long = '';
  // as long as the arrays length is greater than the counter variable continue the loop...
  for(var i = 0; i < arr.length; i++) {
    // IF the current element's length from the array is greater than the length of the comparison variable, assign the current element to the comparison variable, continue this check on each remaining element in the array.
    if (long.length < arr[i].length) {
      long = arr[i];
    }
  }
  return long;
}


// create function called keyValueMatch which takes 2 objects as arguments.
function keyValueMatch(obj1, obj2) {
  // create empty array to store boolean string...
  var whichBool = [];
  // loop through the first object key/value pair...
  for(var key in obj1) {
    // IF the key/value pair of the first object equals the key/value pair of the second object...
    if (obj1[key] === obj2[key]) {
      // store boolean string value 'true' into the whichBool array...
      whichBool.push('true');
      // otherwise store boolean string value 'false' into the whichBool array...
    } else {
      whichBool.push('false');
    }
  }
  // iterate through the whichBool array which holds 2 string boolean values...
  for(var i = 0; i < whichBool.length; i++) {
    // IF both values equal 'false' return false.
    if((whichBool[0] === 'false') && (whichBool[1] === 'false')) {
      console.log('really false');
      return false;
      //otherwise return true.
    } else {
      console.log('really true');
      return true;
    }
  }
}

// longestWord function
console.log(longestWord(this_arr));
// keyValueMatch function
keyValueMatch(obj1, obj2);
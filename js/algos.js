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
  // return the longest word...
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
      return false;
      //otherwise return true.
    } else {
      return true;
    }
  }
}

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

//create a function called howManyWords which takes an integer as an argument and returns an array with the same number of words as the argument.
function howManyWords(how_many) {
  // create empty variable called word which will store the word that's created.
  var word = '';
  // create empty array called these_words which will store how many number of words created.
  var these_words = [];
  // create variable called random_size which will randomly generate a length for the word that will be created randomly.
  var random_length = Math.ceil(Math.random() * (11 - 1));
  // create variable called letters which holds the alphabet.
  var letters = 'abcdefghijklmnopqrstuvwxyz';
  // create counter variable for while loop.
  var idx = 0;

  // create while loop that will run a number of times based on how many times the function was asked to...
  while(idx < how_many) {
    // run a for loop which will create a random length word...
    for(var i = 0; i < random_length; i++) {
      word += letters[Math.floor(Math.random() * letters.length)];
    }
    // push the randomly generated word into the array...
    these_words.push(word);
    // increment the counter variable by 1.
    idx += 1;
  }
  // return the array...
  return these_words;
}


// longestWord function
console.log(longestWord(this_arr));

// keyValueMatch function
console.log(keyValueMatch(obj1, obj2));

// howManyWords function
console.log(howManyWords(3));


// combining longestWord and howManyWords functions...
var longest = howManyWords(10);
console.log(longest);
console.log(longestWord(longest));
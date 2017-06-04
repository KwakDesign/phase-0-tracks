var this_arr = ["long phrase","longest phrase","longer phrase"];

function longestWord(arr) {
  var long = '';
  for(var i = 0; i < arr.length; i++) {
    if (long.length < arr[i].length) {
      long = arr[i];
    }
  }
  return long;
}

console.log(longestWord(this_arr));
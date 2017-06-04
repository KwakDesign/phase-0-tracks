var this_arr = ["long phrase","longest phrase","longer phrase"];
var first_obj = {name: "Tamir", age: 54};
var second_obj = {name: "Tamir", age: 24};


// create function called longestWord which takes a data structure as an arugment and return the longest word
// function longestWord(arr) {
//   var long = '';
//   for(var i = 0; i < arr.length; i++) {
//     if (long.length < arr[i].length) {
//       long = arr[i];
//     }
//   }
//   return long;
// }
// console.log(longestWord(this_arr));


function findKeyValueMatch(obj_1, obj_2) {
  for(var key_1 in obj_1) {
    console.log(key_1);
    console.log(obj_1[key_1]);
    for(var key_2 in obj_2) {
      console.log(key_2);
      console.log(obj_2[key_2]);
      if((key_1 && obj_1[key_1]) === (key_2 && obj_2[key_2])) {
        console.log('true');
      } else {
        console.log('false');
      }
    }
  }
}

findKeyValueMatch(first_obj, second_obj);


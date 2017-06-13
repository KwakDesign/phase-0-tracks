console.log("this fires off!");

var p = document.createElement("p");
var text = document.createTextNode("This was created via JS!!");
var classContainer = document.getElementsByClassName("container")[0];

p.appendChild(text);
classContainer.appendChild(p);


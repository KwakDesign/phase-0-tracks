console.log("this fires off!");

var p = document.createElement("p");
var text = document.createTextNode("This was created via JS!!");
var classContainer = document.getElementsByClassName("container")[0];
var pbj = document.getElementById("pbj");
var h1 = document.getElementById("h1");

function revealPBJ(event) {
  console.log(event);
  pbj.hidden = false;
}

pbj.hidden = true;
p.appendChild(text);
classContainer.appendChild(p);
h1.addEventListener("click", revealPBJ);


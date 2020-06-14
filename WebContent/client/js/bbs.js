
var i=6;
var obj=-1;

function addtolist(){
  var str=document.getElementById("addThing").value;
  var str1=document.getElementById("user").value;
  if(str){
  var thing=document.createElement("input");
  thing.setAttribute("name", "matter");
  thing.setAttribute("id", i);
  thing.setAttribute("type", "checkbox");
  var thinglists=document.createElement("li");
  thinglists.appendChild(thing);
  text=new Date()+" , user "+str1+" left a message: "+str;
  thinglists.appendChild(document.createTextNode(text));
  document.getElementById("ullist").appendChild(thinglists);
  i++;
  document.getElementById("ueser").value="";
  document.getElementById("addThing").value="";
  }
  else{
  alert("The message can't be empty, please enter again.");
  }
}

function selectall(){
var checkson = document.getElementsByName("matter");
for (var j = 0; j < checkson.length; j++)
checkson[j].checked = true;
}

function deselect(){
var checkson = document.getElementsByName("matter");
for (var k = 0; k < checkson.length; k++)
checkson[k].checked = false;
}

function remove(){
if(!confirm("Sure you want to delete these messages?")){
  return;
}
var checkson = document.getElementsByName("matter");
for (var p = checkson.length-1; p>=0; p--){
    if(checkson[p].checked){
      var x=checkson[p].parentNode;
      x.parentNode.removeChild(x);
    }
}
i=document.getElementsByName("matter").length;
}

function hotkey(){
var evkey=window.event.keyCode; 
var checkson = document.getElementsByName("matter");
for(var y = checkson.length-1; y>=0; y--){
 checkson[y].parentNode.style.color="black";
}
if(evkey==13){
  if(checkson[obj%i].checked) {
    checkson[obj%i].checked = false;
  }
  else {
    checkson[obj%i].checked = true;
    checkson[obj%i].parentNode.style.color="#A52A2A";
  }
}
if(evkey==38){
  obj--;
  checkson[obj%i].parentNode.style.color="#A52A2A";
}
if(evkey==40) {
  obj++;
  checkson[obj%i].parentNode.style.color="#A52A2A";
}
}

document.onkeydown = hotkey;


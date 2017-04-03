var dvdLijst;
var actorLijst;
var genreLijst;
window.onload=function(){
    getDataDVD('api/dvd');
    getDataActor('api/actor');
    getDataGenre('api/genre');

}

function addDVD(){
    var title = document.getElementById("title").value;
    var year = document.getElementById("year").value;
    var origin=document.getElementById("origin").value;
    var bonus=document.getElementById("bonus").value;
    var remarks=document.getElementById("remarks").value;
    var dvd = '{"title":"'+title+'","year":"'+year+'"}'; 
    postData('api/dvd', dvd);
}

function addActor(){
    var firstname = document.getElementById("firstName").value;
    var lastname = document.getElementById("lastName").value;
    var actor = '{"firstName":"'+firstname+'","lastName":"'+lastname+'"}'; 
    postData('api/actor', actor);
}
function addGenre(){
    var genrename = document.getElementById("genreName").value;
    var genre = '{"genrename":"'+genreName+'"}'; 
    postData('api/genre', genre);
}

function postData(api, data){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 202) {
            console.log(this.responseText);
            if (api=='api/dvd') getDataDVD(api);
            else if (api=='api/actor') getDataActor(api);
             else if (api=='api/genre') getDataGenre(api);
        }
    };
    xhttp.open("POST", "http://localhost:8082/"+api, true);
    xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send(data);
}

function getDataDVD(api){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            dvdLijst = JSON.parse(this.responseText);
            console.log(dvdLijst);
            var selDVDs = document.getElementById("DVDs");
            for (var i=0 ; i< dvdLijst.length ; i++) {
                var opt = document.createElement("option");
                opt.value = dvdLijst[i].id;
                opt.textContent = dvdLijst[i].title ;
                selDVDs.appendChild(opt);
                // document.getElementById("demo").innerHTML += dvdLijst[i].title + " " + dvdLijst[i].year + "<br>";
            }
        }
    };
    xhttp.open("GET", "http://localhost:8082/"+api);
    xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send();
}


function getDataActor(api){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var actorLijst = JSON.parse(this.responseText);
            console.log(actorLijst);
            var selActors = document.getElementById("actors");
            for (var i=0 ; i< actorLijst.length ; i++) {
                var opt = document.createElement("option");
                opt.value = actorLijst[i].id;
                opt.textContent = actorLijst[i].firstName + " " + actorLijst[i].lastName;
                selActors.appendChild(opt);
                //document.getElementById("demo").innerHTML += actorLijst[i].firstName + " " + actorLijst[i].lastName + "<br>";
            }
        }
    };
    xhttp.open("GET", "http://localhost:8082/"+api);
    xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send();
}

function getDataGenre(api){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var genreLijst = JSON.parse(this.responseText);
            console.log(genreLijst);
            var selGenres = document.getElementById("genres");
            for (var i=0 ; i< genreLijst.length ; i++) {
                var opt = document.createElement("option");
                opt.value = genreLijst[i].id;
                opt.textContent = genreLijst[i].genreName ;
                selGenres.appendChild(opt);
                //document.getElementById("demo").innerHTML += genreLijst[i].genreName"<br>";
            }
        }
    };
    xhttp.open("GET", "http://localhost:8082/"+api);
    xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send();
}

function selectDVD(event) {
    console.log(event.target.value);
}
function selectActor(event) {
    var id=event.target.value;
    console.log(event.target.value);
    var subdvd=document.getElementById("subDVDs");
    subdvd.innerHTML="";
    for (var i=0 ; i< dvdLijst.length ; i++) {
         for (var j=0 ; j< dvdLijst[i].actors.length ; j++) {
               console.log(dvdLijst[i].actors[j].firstName);
               if (id==dvdLijst[i].actors[j].id){
                    var opt = document.createElement("option");
                    opt.value = dvdLijst[i].id;
                    opt.textContent = dvdLijst[i].title ;
                    subdvd.appendChild(opt);
               }
         }       
    }
}

function selectGenre(event) {
    console.log(event.target.value);
}
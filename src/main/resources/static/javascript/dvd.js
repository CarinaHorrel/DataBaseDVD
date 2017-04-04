var dvdLijst;
var actorLijst;
var actorSelected;
var genreSelected;
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
    var firstname = document.getElementById("firstname").value;
    var lastname = document.getElementById("lastname").value;
    var actor = '{"firstName":"'+firstname+'","lastName":"'+lastname+'"}'; 
    postData('api/actor', actor);
}
function addGenre(){
    var genrename = document.getElementById("genrename").value;
    var genre = '{"genreName":"'+genrename+'"}'; 
    postData('api/genre', genre);
}

function postData(api, data){
    console.log(data);
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
    actor = getActorByID(id);
    console.log(event.target.value);
    var subdvda=document.getElementById("subDVDsA");
    subdvda.innerHTML="";
    for (var i=0 ; i< dvdLijst.length ; i++) {
         for (var j=0 ; j< dvdLijst[i].actors.length ; j++) {
               console.log(dvdLijst[i].actors[j].firstName);
               if (id==dvdLijst[i].actors[j].id){
                    var opt = document.createElement("option");
                    opt.value = dvdLijst[i].id;
                    opt.textContent = dvdLijst[i].title ;
                    subdvda.appendChild(opt);
               }
         }       
    }
}

function getActorByID(id){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
           var actor = JSON.parse(this.responseText);
            console.log(actor);
            this.actorSelected=actor;
            document.getElementById("firstname").value=actor.firstName;
            document.getElementById("lastname").value=actor.lastName;
        }
    };
    xhttp.open("GET", "http://localhost:8082/api/actor/"+id);
    xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send();
}

function selectGenre(event) {
var id=event.target.value;
    genre = getGenreByID(id);
    console.log(event.target.value);
    var subdvdg=document.getElementById("subDVDsG");
    subdvdg.innerHTML="";
    for (var i=0 ; i< dvdLijst.length ; i++) {
         for (var j=0 ; j< dvdLijst[i].genres.length ; j++) {
               console.log(dvdLijst[i].genres[j].genreName);
               if (id==dvdLijst[i].genres[j].id){
                    var opt = document.createElement("option");
                    opt.value = dvdLijst[i].id;
                    opt.textContent = dvdLijst[i].title ;
                    subdvdg.appendChild(opt);
               }
         }       
    }
}

function getGenreByID(id){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
           var genre = JSON.parse(this.responseText);
            console.log(genre);
            this.genreSelected=genre;
            document.getElementById("genrename").value=genre.genreName;
        }
    };
    xhttp.open("GET", "http://localhost:8082/api/actor/"+id);
    xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send();
}

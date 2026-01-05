// console.log("client script loaded");

function ajaxGET(url, callback) {
    const xhr = new XMLHttpRequest();
    xhr.onload = function() {
        if(this.readyState == XMLHttpRequest.DONE && this.status == 200) {
            value = this.responseText;
            callback(this.responseText);
        } else {
            console.log(this.status);
        }
    }

    xhr.open("GET", url);
    xhr.send();
}

document.querySelectorAll(".clear").forEach(function (currentElement, currentIndex, listObj) {
    currentElement.addEventListener("click", function (e) {
        for (let i = 0; i < this.parentNode.childNodes.length; i++) {
            if (this.parentNode.parentNode.childNodes[i].nodeType == Node.ELEMENT_NODE) {
                if (this.parentNode.parentNode.childNodes[i].getAttribute("class") == "ajax-stuff") {
                    this.parentNode.parentNode.childNodes[i].innerHTML = "";
                    break;
                }
            }
        }
    });
});

document.querySelector("#moviesJSON").addEventListener("click", function(e) {
    ajaxGET("/movies?format=json", function(data) {
        let parsedData = JSON.parse(data);
        // console.log("after parsing", parsedData);

        let str = "<table>";
        str += "<tr><th>" + "Title" + "</th><th>" + "Genre" + "</th><th>" + "Duration" + "</th><th>" + "Rating" + "</th><th>" + "Showtimes" + "</th></tr>";

        for(let i = 0; i < parsedData.length; i++) {
            let item = parsedData[i];
            str += "<tr><td>" + item["Title"] + "</td><td>" + item["Genre"] + "</td><td>" + item["Duration"]
                + "</td><td>" + item["Rating"] + "</td><td>" + item["Showtimes"] + "</td></tr>";
        }
        str += "</table>"
        document.getElementById("movies-json").innerHTML = str;
    })
})

document.addEventListener("DOMContentLoaded", function () {
    ajaxGET("/movie-join", function(data) {
        // document.getElementById("reviews-table").innerHTML = data;
        let parsedData = JSON.parse(data);

        let table = "<table><tr><th>Title</th><th>Release Year</th><th>Director</th><th>Description</th><th>Review Date</th><th>Review Text</th><th>Review Time</th><th>Rating</th><th>Views</th></tr>";
        for (let i = 0; i < parsedData.length; i++) {
            table += "<tr>";
            for (const property in parsedData[i]) {
            table += "<td>" + parsedData[i][property] + "</td>";
            }
            table += "</tr>";
        }
        table += "</table>";
        document.getElementById("reviews-table").innerHTML = table;
    })
})




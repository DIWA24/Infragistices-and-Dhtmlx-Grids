function myFunction()
{
    document.getElementById("demo").innerHTML = "Diwa won the World.......";
}
function myFuntion1() {
    var x, y, z;
    x = 55;
    y = 45;
    z = x + y;
    document.getElementById("demo").innerHTML = "The value of z is" + z + "";
}
function loadXMLDoc() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            myFunction(this);
        }
    };
    xmlhttp.open("GET", "UserData.xml", true);
    xmlhttp.send();
}
function myFunction(xml) {
    var i;
    var xmlDoc = xml.responseXML;
    var table = "<tr><th>UserName</th><th>Email</th><th>Password</th><th>Country</th><th>Gender</th></tr>";
    var x = xmlDoc.getElementsByTagName("CD");
    for (i = 0; i < x.length; i++) {
        table += "<tr><td>" +
        x[i].getElementsByTagName("UserName")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("Email")[0].childNodes[0].nodeValue +
        "<tr><td>" +
        x[i].getElementsByTagName("Password")[0].childNodes[0].nodeValue +
        "<tr><td>" +
        x[i].getElementsByTagName("Country")[0].childNodes[0].nodeValue +
        "<tr><td>" +
        x[i].getElementsByTagName("Gender")[0].childNodes[0].nodeValue +
        "</td></tr>";
    }
    document.getElementById("demo").innerHTML = table;
}

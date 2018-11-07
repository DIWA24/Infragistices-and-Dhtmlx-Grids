function myFunction() {
    var x = document.getElementById("usrname").value;
    if (x === null || x === "") {
        alert("UserName Can't be blank");
        return false;
    }
    var email = document.getElementById("email").value;
    var atposition = email.indexOf("@");
    var dotposition = email.lastIndexOf(".");
    if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= email.length) {
        alert("Please enter a Valid Email");
        return false;
    }
    var pass1 = document.getElementById("psw").value;
    if (pass1 === null || pass1 === "") {
        alert("Password Can't be blank");
        return false;
    }
    var pass1 = document.getElementById("psw").value;
    var pass2 = document.getElementById("rpsw").value;
    if (pass1 != pass2) {
        alert("Password must be Same!!!");
        return false;
    }
    var country = document.getElementById("country").value;
    if (country == "Select Country") {
        alert("Please Choose country");
        return false;
    }
    var phoneno = document.getElementById("phone").value;
    if (phoneno == "") {
        alert("Please enter Phone number");
        return false;
    }
    if (isNaN(phoneno)) {
        alert("Only numbers allowed");
        return false;
    }
    if (phoneno.length < 10) {
        alert("Please enter 10 digits");
        return false;
    }

}
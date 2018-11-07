function myFunction()
{
    var name = document.getElementById("txt_name").value;
    if (name === null || name === "")
    {
        alert("Name Can't be blank");
        return false;
    }
    var cname = document.getElementById("txt_rname").value;
    if(name!=cname)
    {
        alert("Names must be Same");
        return false;
    }
    var x = document.getElementById("usrname").value;
    if (x === null || x === "")
    {
        alert("UserName Can't be blank");
        return false;
    }
    var dob = document.getElementById("dob").value;
    if(dob===null||dob==="")
    {
        alert("Please Enter Date Of Birth");
        return false;
    }
    var email = document.getElementById("txt_email").value;
    var atposition = email.indexOf("@");
    var dotposition = email.lastIndexOf(".");
    if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= email.length)
    {
        alert("Please enter a Valid Email");
        return false;
    }
    var confemail = document.getElementById("Confemail").value;
    if (email != confemail)
    {
        alert("Email must be Same");
        return false;
    }
    var pass1 = document.getElementById("pass1").value;
    var pass2 = document.getElementById("pass2").value;
    if(pass1!=pass2)
    {
        alert("Password must be Same!!!");
        return false;
    }
}
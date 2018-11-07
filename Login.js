function Diwa()
{
    var name = document.getElementById("usrname").value;
    if(name==null||name=="")
    {
        alert("Username can't be blank");
        return false;
    }
    var pass = document.getElementById("psw").value;
    if (pass == null || pass == "") {
        alert("Password can't be blank");
        return false;
    }
}
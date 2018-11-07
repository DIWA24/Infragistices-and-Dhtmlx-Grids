window.onload = doOnLoad();
var jsonfromAjax = "";
var myGrid;
var Name;
var email;
var psw;
var country;
var gender;
var role;
var phone;
var file;
function SelectedRow(id) {
    if (id !== "") {
        Name = myGrid.cellById(id, 0).getValue();
        email = myGrid.cellById(id, 1).getValue();
        psw = myGrid.cellById(id, 2).getValue();
        country = myGrid.cellById(id, 3).getValue();
        gender = myGrid.cellById(id, 4).getValue();
        role = myGrid.cellById(id, 5).getValue();
        phone = myGrid.cellById(id, 6).getValue();
        file = myGrid.cellById(id, 7).getValue();
    }
}

function Update(stage, rId, cInd, nValue, oValue) {
    if (stage == 2) {
      //  alert("rID: " + rId + ", cInd: " + cInd + ", nValue: " + nValue + ", oValue: " + oValue);
        Name = myGrid.cellById(rId, 0).getValue();
        email = myGrid.cellById(rId, 1).getValue();
        psw = myGrid.cellById(rId, 2).getValue();
        country = myGrid.cellById(rId, 3).getValue();
        gender = myGrid.cellById(rId, 4).getValue();
        role = myGrid.cellById(rId, 5).getValue();
        phone = myGrid.cellById(id, 6).getValue();
        file = myGrid.cellById(Id, 7).getValue();
        $.ajax({
            type: "POST",
            async: true,
            url: "Dhtml2.aspx/UpdateData",
           // data: "{'UserName':'" + Name + "','Email':'" + email + "','Password':'" + psw + "','Country':'" + country + "','Gender':'" + gender + "','Role':'" + role + "'}",
            data: JSON.stringify({
                "UserName": Name,
                "Email": email,
                "Password": psw,
                "Country": country,
                "Gender": gender,
                "Role": role,
                "Phone": phone,
                "FileUpload1": file,
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                alert("Updated Succesfully");
                doOnLoad();
            },
            error: function (e) {
                alert(e.reponseText);
            },
        });
        return true;
    }
}

function doOnLoad() {
    myGrid = new dhtmlXGridObject('dhtmlgrid');
    myGrid.enableRowsHover(true, "hover");
    myGrid.setHeader("UserName, Email, Password, Country, Gender,Role,Phone,FileUpload1");
    myGrid.setColumnIds("uname,email,psw,country,gender,role,phone,file");
    myGrid.setColValidators("NotEmpty,validEmail,NotEmpty,NotEmpty,NotEmpty,NotEmpty,NotEmpty,link");
    myGrid.enableValidation(true, true, true, true, true, true,true,true);
    myGrid.setInitWidths("220,220,220,220,220,220,220,220");
    myGrid.setColAlign("left,left,left,left,left,left,left,left");
    myGrid.attachHeader('#select_filter,#text_filter,#text_filter,#text_filter,#text_filter,#text_filter,#text_filter,#text_filter');
    myGrid.setColTypes("ro,ed,ed,ed,ed,ed,ed,link");
    myGrid.enableAutoWidth(true);
    myGrid.setSkin("dhx_skyblue");
    myGrid.enablePaging(true, 10, 5, "PagingArea", true);
    myGrid.setPagingSkin("bricks");
    myGrid.setColSorting("str,str,str,str,str,str,int,str");
    myGrid.attachEvent("onRowSelect", SelectedRow);
    //myGrid.attachEvent("onEditCell", Update);
    myGrid.attachEvent("onEditCell", StUpdateProc);
    myGrid.deleteRow(myGrid.getRowId(0));
    myGrid.clearAll();
    myGrid.init();
    //myGrid.enableLightMouseNavigation(true);
    //myGrid.enableKeyboardSupport(true);
    
    //myGrid.parse(JSON.stringify(data), "json");
    //myGrid.load("data", "json");

    $.ajax({
        type: "GET",
        async: true,
        url: "Dhtml2.aspx/GetJsonDataforAjax",
        data:'{}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            if (typeof(result.d) != "undefined")
                jsonfromAjax = result.d;
            myGrid.parse(result.d, "json");
        },
        error: function (e) {
            alert(e.reponseText);
        }
    });
    // myGrid.parse(document.getElementById("HiddenField1").value, "json"); 
}

function removeRow() {
    $.ajax({
        type: "POST",
        async: true,
        url: "Dhtml2.aspx/DeleteData",
        //data: "{'UserName':'" + Name + "'}",
        data:JSON.stringify({
            "UserName":Name
        }),
        contentType: "application/json; charset=utf-8",
        dataType:"json",
        success: function (result) {
            alert("Deleted Succesfully");
            doOnLoad();
        },
        error: function (e) {
            alert(e.reponseText);
        },
    });
}
function Filter(stage, rId, cInd, nValue, oValue) {
    if (stage == 1) {
        Name = myGrid.cellById(rId, 0).getValue();
        email = myGrid.cellById(rId, 1).getValue();
        psw = myGrid.cellById(rId, 2).getValue();
        country = myGrid.cellById(rId, 3).getValue();
        gender = myGrid.cellById(rId, 4).getValue();
        role = myGrid.cellById(rId, 5).getValue();
        phone = myGrid.cellById(rId, 6).getValue();
        file = myGrid.cellById(rId, 7).getValue();
        $.ajax({
            type: "POST",
            async: true,
            url: "Dhtml2.aspx/FilterData",
            // data: "{'UserName':'" + Name + "','Email':'" + email + "','Password':'" + psw + "','Country':'" + country + "','Gender':'" + gender + "','Role':'" + role + "'}",
            data: JSON.stringify({
                "UserName": Name,
                "Email": email,
                "Password": psw,
                "Country": country,
                "Gender": gender,
                "Role": role,
                "Phone": phone,
                "File":file,
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                alert("Updated Succesfully");
                doOnLoad();
            },
            error: function (e) {
                alert(e.reponseText);
            },
        });
        return true;
    }
}

function Stprocedure() {
        $.ajax({
            type: "POST",
            async: true,
            url: "Dhtml2.aspx/Stprocedure",
            // data: "{'UserName':'" + Name + "','Email':'" + email + "','Password':'" + psw + "','Country':'" + country + "','Gender':'" + gender + "','Role':'" + role + "'}",
            data: JSON.stringify({
                "UserName": Name,
                "Email": email,
                "Password": psw,
                "Country": country,
                "Gender": gender,
                "Role": role,
                "Phone": phone,
                "File":file,
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                alert("Updated Succesfully");
                doOnLoad();
            },
            error: function (e) {
                alert(e.reponseText);
            },
        });
        return true;
    }

function stdeleteProc() {
    $.ajax({
        type: "POST",
        async: true,
        url: "Dhtml2.aspx/stdeleteProc",
        //data: "{'UserName':'" + Name + "'}",
        data: JSON.stringify({
            "UserName": Name,
        }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            alert("Deleted Succesfully");
            doOnLoad();
        },
        error: function (e) {
            alert(e.reponseText);
        },
    });
}

function StUpdateProc(stage, rId, cInd, nValue, oValue) {
    if (stage == 2) {
        var email = myGrid.cellById(rId, 1).getValue();
        var atposition = email.indexOf("@");
        var dotposition = email.lastIndexOf(".");
        if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= email.length) {
            alert("Please enter a Valid Email");
            return false;
        }
        var psw = myGrid.cellById(rId, 2).getValue();
        if (psw === null || psw === "") {
            alert("Password Can't be blank");
            return false;
        }

        var phone = myGrid.cellById(rId, 6).getValue();
        if (phone == "") {
            alert("Please enter Phone number");
            return false;
        }
        if (isNaN(phone)) {
            alert("Only numbers allowed");
            return false;
        }
        if (phone.length < 10) {
            alert("Please enter 10 digits");
            return false;
        }
        var country = myGrid.cellById(rId, 3).getValue();
        if (country == "Select Country" || country=="") {
            alert("Please Choose country");
            return false;
        }
        var gender = myGrid.cellById(rId, 4).getValue();
        if (gender == "") {
            alert("Please Choose Gender");
            return false;
        }
        Name = myGrid.cellById(rId, 0).getValue();
        email = myGrid.cellById(rId, 1).getValue();
        psw = myGrid.cellById(rId, 2).getValue();
        country = myGrid.cellById(rId, 3).getValue();
        gender = myGrid.cellById(rId, 4).getValue();
        role = myGrid.cellById(rId, 5).getValue();
        phone = myGrid.cellById(rId, 6).getValue();
        file = myGrid.cellById(rId, 7).getValue();
        $.ajax({
            type: "POST",
            async: true,
            url: "Dhtml2.aspx/UpdateData",
            // data: "{'UserName':'" + Name + "','Email':'" + email + "','Password':'" + psw + "','Country':'" + country + "','Gender':'" + gender + "','Role':'" + role + "'}",
            data: JSON.stringify({
                "UserName": Name,
                "Email": email,
                "Password": psw,
                "Country": country,
                "Gender": gender,
                "Role": role,
                "Phone": phone,
                "FileUpload1":file,
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                alert("Updated Succesfully");
                doOnLoad();
            },
            error: function (e) {
                alert(e.reponseText);
            },
        });
        return true;
    }
}

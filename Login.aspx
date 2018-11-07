<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function preventBack() {
            window.history.forward();
        }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <style>
        body{
            background-color:#E6E6FA;
        }
        .table{
            text-align:center;
            width:100px;
            height:100px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div Style:'align="center"; width:100px; height:100px;'>
      <img src="C:\Users\diwakarp\Desktop\Project\login_icon.png" alt="login_icon" >
    <table >
        <tr>
            <td><label><b>User Name:</b></label></td>
            <td> <input type="text"  name="uname" id="usrname" runat="server" cssClass="selector" />
        </tr>
        <tr>
            <td><label><b>Password :</b></label></td>
            <td><input type="password" id="psw" runat="server" cssClass="selector" /></td>
        </tr><tr><td>
            <asp:Button ID="btn_Submit" runat="server" Text="Submit" OnClick="btn_Submit_Click" onClientClick="return Diwa();" />
            </td><td>
                <asp:Button ID="Btn_Register" runat="server" Text="Register" OnClick="Btn_Register_Click" />
    </table>
    </div>
    </form>
    <script src="Login.js"></script>
        <script src="Common.js"></script>
</body>
</html>

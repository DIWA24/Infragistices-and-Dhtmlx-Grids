<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <style>
table, th, td {
    border: 1px solid black;
     color:red;
    font-style:italic;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <label><b>User Name</b></label>
                </td>
                <td>
                    <input type="text" name="uname" id="usrname"  onkeydown="txtboxChange()" runat="server" style="width: 135px" />
                </td>
            </tr>
            <tr>
                <td>
                    <label><b>Email</b></label>
                </td>
                <td>
                    <input type="text" name="email" id="email" runat="server" onkeydown="txtboxChange()" style="width: 135px" />

                </td>
            </tr>
            <tr>
                <td>
                    <label><b>Password</b></label>
                </td>
                <td>
                    <input type="password" name="pwd" id="psw" runat="server" onkeydown="txtboxChange()" style=" width: 134px;" />
                    </td>
            </tr>

            <tr>
                <td>
                    <label><b>Repeat Password</b></label>
                </td>
                <td class="auto-style3">
                    <input type="password" name="rpwd" id="rpsw" runat="server"  onkeydown="txtboxChange()" style="width: 133px; font-weight: 180px;" width="180px" />
                </td>
            </tr>
            <tr>
                <td>
                    <label><b>Country : </b></label>
                </td>
                <td>
                    <asp:DropDownList ID="country" runat="server" onkeydown="txtboxChange()" OnSelectedChanged="DropDownList_SelectedIndexChanged">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>INDIA</asp:ListItem>
                        <asp:ListItem>BANGLADESH</asp:ListItem>
                        <asp:ListItem>SRILANKA</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>RUSSIA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="gender" onkeydown="txtboxChange()" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HiddenField ID="role" runat="server" />
                </td>
            </tr>
            <tr>
                <td><b>Phone Number</b></td>
                <td>
                  <input type="text" name="phone" id="phone" onkeydown="txtboxChange()" runat="server" style="width: 135px" />
                </td>
            </tr>
            <tr>
                <td>
                    File Upload
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_Register" runat="server" OnClick="btn_Register_Click" OnClientClick="return myFunction();" Text="Register" />
                </td>
                <td>
                    <asp:Button ID="btn_Login" runat="server" Text="Login" OnClick="btn_Login_Click" />
                </td>
                </tr>
            </table>
    </div> 
    </form>
</body>
<script src="Add.js"></script>
<script src="Common.js"></script>
</html>

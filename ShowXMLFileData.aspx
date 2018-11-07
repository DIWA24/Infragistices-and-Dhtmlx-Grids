<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowXMLFileData.aspx.cs" Inherits="ShowXMLFileData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset runat="server">
            <legend runat="server">Xml Database Demo</legend>
            <table align="center" runat="server">
                <tr>
                    <td>
                        <label><b>User Name</b></label>
                    </td>
                    <td>
                        <asp:TextBox ID="usrname" runat="server"/>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <label><b>Email</b></label>
                    </td>
                    <td>
                         <asp:TextBox ID="email" runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label><b>Password</b></label>
                    </td>
                    <td>
                        <asp:TextBox ID="psw" runat="server"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label><b>Repeat Password</b></label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label><b>Country : </b></label>
                    </td>
                    <td>
                        <asp:DropDownList ID="country" runat="server" OnSelectedChanged="DropDownList_SelectedIndexChanged">
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
                        <asp:RadioButtonList ID="gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>

                    <td class="auto-style1">
                        <input id="Reset1" type="reset" value="Reset" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="gv1" runat="server"/>
                    </td>
                </tr>
            </table>
        </fieldset>

    </div>
    </form>
</body>
</html>

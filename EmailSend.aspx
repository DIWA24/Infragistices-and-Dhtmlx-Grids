<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailSend.aspx.cs" Inherits="EmailSend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <table align="center">

                                <tr>
                    <td><b><label>to :</label></b></td>
                     <td>
                         <asp:TextBox ID="to" name="To" runat="server" ></asp:TextBox>
                </td>
                </tr>
                                                <tr>
                    <td><b><label>subject :</label></b></td>
                     <td>
                         <asp:TextBox ID="subject" name="Subject" runat="server"></asp:TextBox>
                </td>
                </tr>
                                                                <tr>
                    <td><b><label>body :</label></b></td>
                     <td>
                         <asp:TextBox ID="body" name-="Body" runat="server"></asp:TextBox>
                </td>
                </tr>
                 <tr>
                <td>
                    <asp:Button ID="submitbtn" runat="server" Text="Send" OnClick="submitbtn_Click"  />
                </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

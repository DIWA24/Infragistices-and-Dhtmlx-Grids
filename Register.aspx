<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./jquery.datetimepicker.css" />
    <script type="text/javascript" src="./jquery.js"></script>
    <script type="text/javascript" src="./jquery.datetimepicker.js"></script>
</head>
<body style="text-align:center;background-color:#D5B7B1">
    <form id="myForm" runat="server">
        <div runat="server">
            <div class="container" align="center">
                <img src="C:\Users\diwakarp\Desktop\Project\reg.jpg" alt="login_icon">
            </div>
            <table align="center" runat="server">
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Name :" />
                    </td>
                    <td>
                        <asp:TextBox type="text" ID="txt_name" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Re-enter Name :" />
                    </td>
                    <td>
                        <asp:TextBox ID="txt_rname" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="UserName :" />
                    </td>
                    <td>
                        <asp:TextBox ID="usrname" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Date_of_Birth :" />
                    </td>
                    <td>
                        <asp:TextBox ID="dob" runat="server" />
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/calender.jpg" OnClick="ImageButton1_Click" Width="25px" />
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Email" />
                    </td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Confirm Email" />
                    </td>
                    <td>
                        <asp:TextBox ID="Confemail" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Password" />
                    </td>
                    <td>
                        <input id="pass1" type="password" placeholder="Password" runat="server" />
                        <br />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text=" Repeat Password" />
                    </td>
                    <td>
                        <input id="pass2" type="password" placeholder="Confirm Password">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text=" Gender" /></td>
                    <td>
                        <asp:RadioButtonList ID="gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text=" Country" />
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
                    <td>
                        <b> Phone No</b>
                    </td>
                    <td>
                                          <input type="text" name="phone" id="phone" runat="server" style="width: 135px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" onfocus="return myFunction();" OnClick="btnSubmit_Click" />
                    </td>
                    <td>
                        <input id="btnreset" type="reset" value="Reset" />
                    </td>
                </tr>



            </table>
        </div>
    </form>
    <script src="Register.js"></script>
        <script src="Common.js"></script>
</body>
</html>

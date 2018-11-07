<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DynamicTabs.aspx.cs" Inherits="DynamicTabs" %>

<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.GridControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.LayoutControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI.NavigationControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI" TagPrefix="ig" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <script type="text/javascript">
        function PreventBack() {
            window.history.forward();
        }
        setTimeout("PreventBack()", 0);
        window.onunload = function () { null };
    </script>
    <title></title>
    <style>
        .body{
            background-color:antiquewhite;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style='color:red;'>
                <asp:ScriptManager runat="server" EnableCdn="true"></asp:ScriptManager>
      <h1>Welcome to Login Page</h1>
        <asp:Label ID="lblWelcome" runat="server" Text="Hello" ></asp:Label>
        <asp:Label ID="lblusername" runat="server"></asp:Label>
        <div>
   <ig:WebTab ID="WebTab1" runat="server" ContentUrl="Default.aspx" Height="1050px" width="4310px"></ig:WebTab>
    </div></div>
        <div>
            <asp:Button ID="SoutButton" runat="server" Text="Sign Out" OnClick="SoutButton_Click" />
        </div>

    </form>
</body>
     <script src="Common.js"></script>
</html>

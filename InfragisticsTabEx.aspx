<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfragisticsTabEx.aspx.cs" Inherits="InfragisticsTabEx" %>

<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.GridControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.LayoutControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI.NavigationControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI" TagPrefix="ig" %>
<link href="infragistics/20111CLR35/Styles/Office2007Black/ig_WebTab.css" rel="stylesheet" />
<link href="infragistics/20111CLR35/Styles/Office2007Blue/ig_WebTab.css" rel="stylesheet" />
<link href="infragistics/20111CLR35/Styles/Office2007Silver/ig_WebTab.css" rel="stylesheet" />
<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url("webdesign2.jpg");
        }

        .header
        {
            width: 800px;
            }
        .margin{
            margin-left:10px;
            margin-right:10px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style='color:red; font-style: italic;'>
                            <asp:ScriptManager runat="server" EnableCdn="true"></asp:ScriptManager>
            <h1>Welcome to Login Page</h1>
        <asp:Label ID="lblWelcome" runat="server" Text="Hello" ></asp:Label>
        <asp:Label ID="lblusername" runat="server"></asp:Label>
            <ig:webtab id="WTab" runat="server" height="100%" width="200%" >
                <ClientEvents  SelectedIndexChanging="fntabchange" />
                <Tabs >
                    <ig:ContentTabItem runat="server" ContentUrl="Home.aspx"  Text=" Home ">
                     <TabCssClasses  CssClass="margin" /></ig:ContentTabItem>
                    <ig:ContentTabItem runat="server" ContentUrl="Add.aspx" Text="  Register  "> 
                    <TabCssClasses CssClass="margin" /></ig:ContentTabItem>
                    <ig:ContentTabItem runat="server" ContentUrl="Registered_Users.aspx" Text="  Registered_Users  ">
                    <TabCssClasses  CssClass="margin" /> </ig:ContentTabItem>
                </Tabs> 
            </ig:webtab>
        </div>
    </form>
    <
</body>
<script src="InfragisticsTabEx.js"></script>
        <script src="Common.js"></script>
</html>

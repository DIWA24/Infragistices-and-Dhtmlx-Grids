<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<script src="../scripts/infragistics.js" type="text/javascript"></script>

<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.GridControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.LayoutControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI.NavigationControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI" TagPrefix="ig" %>

<link type="text/css" href="/Styles/css/themes/infragistics/infragistics.theme.css" rel="stylesheet" />
<link type="text/css" href="/Styles/css/structure/infragistics.css" rel="stylesheet" />
<script type="text/javascript" src="/Scripts/jquery.min.js"></script>
<script type="text/javascript" src="/Scripts/jquery-ui.min.js"></script>
<script type="text/javascript" src="/Scripts/js/infragistics.js"></script>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
     <link type="text/css" href="/SamplesCommon/jQuery/igRating/Common/style.css" rel="stylesheet" />

    <link type="text/css" href="/SamplesBrowser/SamplesCommon/aspnet/Common/Styles/jquery/css/themes/infragistics/infragistics.theme.css" rel="stylesheet" />
    <link type="text/css" href="/SamplesBrowser/SamplesCommon/aspnet/Common/Styles/jquery/css/structure/infragistics.css" rel="stylesheet" />

    <script type="text/javascript" src="/SamplesBrowser/Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="/SamplesBrowser/Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/SamplesBrowser/SamplesCommon/aspnet/Common/Scripts/jquery/js/infragistics.js"></script>
    <style>
         body{
            background-image:url("webdesign2.jpg");
        }
         .diwa{
             margin:auto;
             width:60%;
             color:aqua;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="diwa">
    <h1 >This is Home Page</h1>
    </div>
       <%-- <ig:WebUpload ID="WebUpload1" runat="server" >
</ig:WebUpload>--%>
        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:Button ID="btn_Save" runat="server" Text="Upload" OnClick="btn_Save_Click" /><br />
        <asp:Label ID="lblmsg" runat="server"></asp:Label><br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="btn_Download" runat="server" Text="Download" OnClick="btn_Download_Click" />

    </form>
</body>
<script src="Common.js"></script>
</html>

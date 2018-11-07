<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dhtml2.aspx.cs" Inherits="Dhtml2" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="include/javascript/dhtmlx/dhtmlxGrid/dhtmlxgrid.css" />
    <link rel="stylesheet" type="text/css" href="include/javascript/dhtmlx/dhtmlxGrid/skins/dhtmlxgrid_dhx_skyblue.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="dhtmlxGrid/sources/dhtmlxCommon/codebase/dhtmlxcommon.js"></script>
    <script src="dhtmlxGrid/sources/dhtmlxGrid/codebase/dhtmlxgrid.js"></script>
    <script src="dhtmlxGrid_44/sources/dhtmlxCommon/codebase/dhtmlxcommon.js"></script>
    <script src="dhtmlxGrid_44/sources/dhtmlxGrid/codebase/dhtmlxgrid.js"></script>
    <script src="dhtmlxGrid/codebase/dhtmlxgrid.js"></script>
    <style>
        .hover {
            background-color: navajowhite;
        }
    </style>
    <link href="dhtmlxGrid/codebase/dhtmlxgrid.css" rel="stylesheet" />
    <link href="dhtmlxGrid/skins/skyblue/dhtmlxgrid.css" rel="stylesheet" />
    <script src="dhtmlxGrid/sources/dhtmlxGrid/codebase/ext/dhtmlxgrid_filter.js"></script>
    <script src="dhtmlxGrid/sources/dhtmlxGrid/codebase/ext/dhtmlxgrid_filter_ext.js"></script>
    <script src="dhtmlxGrid_44/sources/dhtmlxGrid/codebase/ext/dhtmlxgrid_filter.js"></script>
    <script src="dhtmlxGrid_44/sources/dhtmlxGrid/codebase/ext/dhtmlxgrid_filter_ext.js"></script>
    <script src="dhtmlxGrid/sources/dhtmlxCommon/codebase/connector.js"></script>
    <script src="dhtmlxGrid_44/sources/dhtmlxCommon/codebase/connector.js"></script>
    
    <script>
        //var data = new Array();
        //data = {
        //    rows: [
        //        {
        //            id: "Diwa",
        //            data: [
        //                 "Diwa",
        //                 "diwa@gmail.com",
        //                 "123",
        //                 "INDIA",
        //                 "Male",
        //                 "Admin"]
        //        },
        //       {
        //           id: "Bhas",
        //           data: [
        //                "Bhas",
        //                "bhas@gmail.com",
        //                "2424",
        //                "SRILANKA",
        //                "Male",
        //                "User"]
        //       },
        //       {
        //           id: "Sri",
        //           data: [
        //                "Sri",
        //                "sree@gmail.com",
        //                "1234",
        //                "INDIA",
        //                "Male",
        //                "User"]
        //       },
        //    ]
        //};
    </script>
</head>
<body onload="doOnLoad()">
    <div id="dhtmlgrid" style="width: 100%; height: 350px; background-color: white;"></div>
    <div id="PagingArea"></div>
    <form runat="server">
        <input type="button" value="Remove Row" onclick="stdeleteProc()"  runat="server">
         <input type="button" value="Update" onclick="Update()"  runat="server">
        <asp:Button ID="btn_Add" runat="server" Text="Add" OnClick="btn_Add_Click" />
<%--        <asp:Button ID="btn_Download" runat="server" Text="Download" OnClick="Download()" />--%>
               <input type="button" value="Download" onclick="SelectedRow()"  runat="server">

    </form>
</body>
<script src="Dhtml.js"></script>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registered_Users.aspx.cs" Inherits="Registered_Users" %>

<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.GridControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.LayoutControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI.NavigationControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI" TagPrefix="ig" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <style type="text/css">
        .HeaderCaptionClass {
            background-color: white;
            border: 1px solid black;
            text-align: center;
        }

        .mouseovercolor {
            background-color: #F6E3CE;
            border: 1px;
            color: black;
            padding: 16px 32px;
            text-align: center;
            font-size: 16px;
            margin: 4px 2px;
            transition: 0.3s;
        }
         tbody.NewItemClass > tr > td

        {
             background-color:aliceblue;
            color: blue;
            border:1px solid black;
            text-align: center;

        }
  
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="DataGridWrapper">
            <asp:ScriptManager runat="server" EnableCdn="true"></asp:ScriptManager>
            <div id="topContentContainer" style="margin-top: 25px; margin-bottom: 20px;">
                <ig:WebDataGrid ID="WebDataGrid1" DataKeyFields="U_NAME" runat="server" AutoGenerateColumns="false" HeaderCaptionCssClass="HeaderCaptionClass" ItemCssClass="NewItemClass" Width="100%" AutoCRUD="false" DefaultColumnWidth="200px">
                    <Columns>
                        <ig:BoundDataField DataFieldName="U_NAME" CssClass="mouseovercolor" Key="UserName">
                            <Header Text="UserName" />
                        </ig:BoundDataField>
                        <ig:BoundDataField DataFieldName="U_COUNTRY" CssClass="mouseovercolor" Key="Country">
                            <Header Text="Country" />
                        </ig:BoundDataField>
                        <ig:BoundDataField DataFieldName="U_GENDER" CssClass="mouseovercolor" Key="Gender">
                            <Header Text="Gender" />
                        </ig:BoundDataField>
                    </Columns>
                </ig:WebDataGrid>
            </div>
        </div>
    </form>
</body>
        <script src="Common.js"></script>
</html>

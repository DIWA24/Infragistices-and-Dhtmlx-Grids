<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.GridControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.LayoutControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI.NavigationControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI" TagPrefix="ig" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
     <style type="text/css">

         .HeaderCaptionClass

        {
             background-color:white;
             border:1px solid black;
            text-align: center;

        }
         tbody.NewItemClass > tr > td

        {
             background-color:aliceblue;
            color: blue;
            border:1px solid black;
            text-align: center;

        }
         tbody > tr > td.ColumnLevelCssClass

        {

            text-decoration: underline;

        }
         tbody > tr.ActiveRowClass > td

        {

            background-color: Red;

        }

        .igg_custompager {
        font-size:18px;
        margin-right:20px;
        background-color:transparent;
        vertical-align:middle;
        }

         tbody > tr > td.ActiveCellClass

        {

            background-color: Yellow;

        }
          tbody > tr > td.SelectedCellClass:last-of-type,tbody>tr:hover>td.SelectedCellClass:last-of-type

        {
              border-right:solid 1px red;
            font-weight: bold;

        }
    </style>
    <script type="text/javascript">
        function DeleteRow() {
            var grid = $find('WebDataGrid1');
            var gridRows = grid.get_rows();
            var selectedRows = grid.get_behaviors().get_selection().get_selectedRows();

            if (selectedRows.get_length() > 0) {
                

                document.getElementById("hiddenDelete").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("UserName").get_value();
                document.forms[0].submit();
            }
        }
        //Bind after initialization       
        $(document).delegate(".selector", "iggridupdatingeditcellending", function (evt, ui) { 
            //return the triggered event
            evt;
     
            // get reference to igGridUpdating widget
            ui.owner;
     
            // to get key or index of row
            ui.rowID;
     
            // get index of column
            ui.columnIndex;
     
            // get key of column
            ui.columnKey;
     
            // get reference to igEditor
            ui.editor;
     
            // get value of cell
            ui.value;
     
            // get old value of cell
            ui.oldValue;
     
            // check if cell was modified and data source will be updated
            ui.update;
     
            // check if that event is raised while new-row-adding
            ui.rowAdding;
        });
 
        //Initialize
        $(".selector").igGrid({
            features : [
                {
                    name : "Updating",
                    editCellEnding: function(evt, ui){ }
                }
            ]
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="DataGridWrapper">
        <asp:ScriptManager runat="server" EnableCdn="true"></asp:ScriptManager>
        <div id="topContentContainer" style="margin-top: 25px; margin-bottom: 20px;">
 <ig:webdatagrid id="WebDataGrid1" datakeyfields="U_NAME" runat="server" AutoGenerateColumns="false" HeaderCaptionCssClass="HeaderCaptionClass" Width="100%" 

ItemCssClass="NewItemClass" DefaultColumnWidth="200px" >
                <Columns>
                    <ig:TemplateDataField Key="DeleteItem" Width="60px">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ID="DeleteItem" AlternateText="Delete"
                                ImageUrl="C:\Users\diwakarp\Desktop\Project\delete.png"
                                OnClientClick="DeleteRow(); return false;" />
                        </ItemTemplate>
                    </ig:TemplateDataField>
                          
        <ig:BoundDataField DataFieldName="U_NAME" Key="UserName"><Header Text="UserName" CssClass="selector"/></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_EMAIL" Key="Email"><Header Text="Email" CssClass="selector"/></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_PASSWORD" Key="Password"><Header Text="Password" CssClass="selector"/></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_COUNTRY" Key="Country"><Header Text="Country" CssClass="selector" /></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_GENDER" Key="Gender"><Header Text="Gender" CssClass="selector" /></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_ROLE" Key="Role"><Header Text="Role" CssClass="selector" /></ig:BoundDataField>
 
                </Columns>
                <Behaviors>
                    <ig:Activation />
                    <ig:Selection RowSelectType="Multiple" CellClickAction="Row" />
                    <ig:EditingCore Enabled="true">
                        <Behaviors>
                            <ig:RowDeleting Enabled="true" />
                        </Behaviors>
                         <Behaviors>
                                        <ig:CellEditing Enabled="true" >
                                            <EditModeActions EnableF2="true" EnableOnActive="true" MouseClick="Single" />
                                            <ColumnSettings>
                                                <ig:EditingColumnSetting ColumnKey="UserName" ReadOnly="true" />
                                            </ColumnSettings>                               
                                        </ig:CellEditing>
                                    </Behaviors>
                    </ig:EditingCore>
                </Behaviors>
            </ig:WebDataGrid>
        </div>
    </div>
         <input type="hidden" id="hiddenDelete" name="hiddenDelete" runat="server" />
        <asp:Button ID="Btn_Logout" runat="server" Text="Logout" OnClick="Btn_Logout_Click" />
    </form>
        <script src="Common.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest = "false" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.GridControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.LayoutControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI.NavigationControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI" TagPrefix="ig" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <title></title>
     <style type="text/css">

 
.zoom {
    padding: 5px;
    transition: transform .2s;
    width: 80px;
    height: 35px;
    margin: 0 auto;
}

.zoom:hover {
    -ms-transform: scale(1.5);
    -webkit-transform: scale(1.5);
    transform: scale(1.5); 
}
         
        .AddData {
            background-color: #F6E3CE;
        }

            .AddData:hover {
                background-color: #F5A9A9;
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
            text-decoration-color:black;
            text-emphasis-color:black;
        }

            .mouseovercolor:hover {
                background-color: aqua;
                color: black;
            }

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
          #WebDataGrid1 tr.rowHover:hover

   {

       background-color: Yellow;

       font-family: Arial;

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

        function UpdateRow() {
            var grid = $find('WebDataGrid1');
            var gridRows = grid.get_rows();
            var selectedRows = grid.get_behaviors().get_selection().get_selectedRows();

            if (selectedRows.get_length() > 0) {
                document.getElementById("hiddenName").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("UserName").get_value();
                document.getElementById("hiddenEmail").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("Email").get_value();
                document.getElementById("hiddenPasswrd").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("Password").get_value();
                document.getElementById("hiddenCountry").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("Country").get_value();
                document.getElementById("hiddenGender").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("Gender").get_value();
                document.getElementById("hiddenRole").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("Role").get_value();
                document.getElementById("hiddenPhone").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("Phone").get_value();
                document.getElementById("hiddenFile").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("File").get_value();

                document.forms[0].submit();
            }
        }
        function Download(s) {
            var grid = $find('WebDataGrid1');
            var gridRows = grid.get_rows();
            var selectedRows = grid.get_behaviors().get_selection().get_selectedRows();

            if (selectedRows.get_length() > 0) {

                document.getElementById("hiddenFile").value = grid.get_behaviors().get_selection().get_selectedRows().getItem(0).get_cellByColumnKey("File").get_value();
                document.forms[0].submit();
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="DataGridWrapper">
        <asp:ScriptManager runat="server" EnableCdn="true"></asp:ScriptManager>
        <div id="topContentContainer" style="margin-top: 25px; margin-bottom: 20px;">
 <ig:webdatagrid id="WebDataGrid1" datakeyfields="U_NAME" runat="server" AutoGenerateColumns="false"  HeaderCaptionCssClass="HeaderCaptionClass" ItemCssClass="NewItemClass"  Width="100%" AutoCRUD="false" DefaultColumnWidth="200px" >
                <Columns>
                    <ig:TemplateDataField Key="DeleteItem" Width="60px">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ID="DeleteItem" AlternateText="Delete"
                                ImageUrl="C:\Users\diwakarp\Desktop\Project\delete.png"
                                OnClientClick="DeleteRow(); return false;" />
                        </ItemTemplate>
                    </ig:TemplateDataField>
                     <ig:TemplateDataField Key="UpdateItem" Width="80px">
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ID="UpdateItem" CssClass="zoom" AlternateText="Add"
                                ImageUrl="C:\Users\diwakarp\Desktop\Project\update.png"
                                OnClientClick="UpdateRow(); return false;" />
                        </ItemTemplate>
                    </ig:TemplateDataField>
                          
        <ig:BoundDataField DataFieldName="U_NAME" CssClass="mouseovercolor, "  Key="UserName" ><Header Text="UserName"/></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_EMAIL" CssClass="mouseovercolor" Key="Email"><Header Text="Email" /></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_PASSWORD" CssClass="mouseovercolor" Key="Password"><Header Text="Password"/></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_COUNTRY"  CssClass="mouseovercolor" Key="Country"><Header Text="Country" /></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_GENDER" CssClass="mouseovercolor" Key="Gender"><Header Text="Gender" /></ig:BoundDataField>
        <ig:BoundDataField DataFieldName="U_ROLE" CssClass="mouseovercolor" Key="Role"><Header Text="Role" /></ig:BoundDataField>
         <ig:BoundDataField DataFieldName="U_PHONENO" CssClass="mouseovercolor" Key="Phone"><Header Text="Phone" /></ig:BoundDataField>
         <ig:BoundDataField DataFieldName="U_File"  CssClass="mouseovercolor"  EnableMultiline="false"  Key="File"><Header Text="File" /></ig:BoundDataField>
                   <ig:TemplateDataField Key="file_Download">
                        <ItemTemplate>
                            <asp:LinkButton ID="file_Download"  Text="File Download" runat="server"  OnClientClick="Download();return false;"></asp:LinkButton>
                        </ItemTemplate>
                    </ig:TemplateDataField> 
                </Columns>
<Behaviors>
    
                        <ig:Activation Enabled="true" />
                        <ig:Selection RowSelectType="Multiple" CellClickAction="Row" Enabled="true" />
    <ig:RowSelectors RowSelectorClientEvents-RowSelectorClicking=""></ig:RowSelectors>
                        <ig:EditingCore>
                            <Behaviors>
                                <ig:CellEditing EditModeActions-EnableF2="true" EditModeActions-MouseClick="Single"
                                    Enabled="true">
                                    <ColumnSettings>
                                        <ig:EditingColumnSetting ColumnKey="UserName" ReadOnly="true" />
                                      <ig:EditingColumnSetting ColumnKey="File" ReadOnly="true" />
                                    </ColumnSettings>
                                </ig:CellEditing>
                                <ig:RowAdding Alignment="Top" EditModeActions-EnableF2="true" EditModeActions-EnableOnActive="true"
                                    EditModeActions-MouseClick="Single" Enabled="true" />
                                <ig:RowDeleting Enabled="true" />
                            </Behaviors>
                        </ig:EditingCore>
                    </Behaviors>
                              <EditorProviders>
                        <ig:TextEditorProvider ID="WebTextEditProvider1"/>
                    </EditorProviders>
            </ig:WebDataGrid>
        </div>
     <div>
           <asp:Button ID="AddData" CssClass="AddData" runat="server" Text="Add"  OnClientClick="return xml();" OnClick="AddData_Click"  />
            <asp:TextBox ID="usrname" CssClass="mouseovercolor" runat="server"/>
            <asp:TextBox ID="email" CssClass="mouseovercolor" runat="server"/>
            <asp:TextBox ID="psw" CssClass="mouseovercolor" runat="server"/>
            <asp:TextBox ID="country" CssClass="mouseovercolor" runat="server"/>
            <asp:TextBox ID="gender" CssClass="mouseovercolor" runat="server"/>
            <asp:TextBox ID="role" CssClass="mouseovercolor" runat="server"/>
            <asp:TextBox ID="phone" CssClass="mouseovercolor" runat="server"/>
            <asp:FileUpload ID="FileUpload1" runat="server" />
              </div>
    </div>
      <input type="hidden" id="hiddenDelete" name="hiddenDelete" runat="server" />
        <input type="hidden" id="hiddenName" name="hiddenName" runat="server" />
        <input type="hidden" id="hiddenEmail" name="hiddenEmail" runat="server" />
        <input type="hidden" id="hiddenPasswrd" name="hiddenPasswrd" runat="server" />
        <input type="hidden" id="hiddenCountry" name="hiddenCountry" runat="server" />
        <input type="hidden" id="hiddenGender" name="hiddenGender" runat="server" />
        <input type="hidden" id="hiddenRole" name="hiddenRole" runat="server" />
        <input type="hidden" id="hiddenPhone" name="hiddenPhone" runat="server" />
        <input type="hidden" id="hiddenFile" name="hiddenFile" runat="server" />
    </form>
    <script src="Default.js"></script>
    <script src="Common.js"></script>
</body>
</html>

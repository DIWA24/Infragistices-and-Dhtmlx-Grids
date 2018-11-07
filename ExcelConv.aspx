<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExcelConv.aspx.cs" Inherits="ExcelConv" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         Import Excel File:  
        <asp:FileUpload ID="FileUpload1" runat="server" />  
        <br />  
        <br />  
        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />  
        <br />  9999
        <br />  
        <asp:Label ID="Label1" runat="server"></asp:Label>  
        <br />  
        <asp:GridView ID="gvExcelFile" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">    
        </asp:GridView>  
      
        </div>
    </form>
</body>
</html>

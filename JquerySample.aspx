<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JquerySample.aspx.cs" Inherits="JquerySample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        Label1.Text = "You clicked the first button.";
    }

    protected void Button2_Click(object sender, System.EventArgs e)
    {
        Label1.Text = "You clicked the second button.";
    }
</script>

</head>
<body style="padding:25px">
    <form id="form1" runat="server">
    <div>
             <h2 style="color:MidnightBlue; font-style:italic;">      
            Button OnClick() method and click event
        </h2>      
        <hr width="450" align="left" color="Gainsboro" />
        <asp:Label 
            ID="Label1" 
            runat="server" 
            Font-Size="X-Large" 
            ForeColor="Crimson"
            Font-Italic="true"
            />
        <br /><br />
        <asp:Button 
            ID="Button1" 
            runat="server" 
            Text="First Button" 
            OnClick="Button1_Click"
            Font-Bold="true"
            ForeColor="Blue"
            Height="45"
            Width="150"
            />
        <asp:Button 
            ID="Button2" 
            runat="server" 
            Text="Second Button" 
            OnClick="Button2_Click"
            Font-Bold="true"
            ForeColor="DodgerBlue"
            Height="45"
            Width="150"
            />
    </div>
    </form>
</body>
</html>

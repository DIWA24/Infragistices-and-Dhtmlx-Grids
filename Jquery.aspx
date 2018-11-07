<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jquery.aspx.cs" Inherits="Jquery" %>


<!DOCTYPE html>

<html>
<head runat="server">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title></title>
    <script>
        $(document).ready(function () {
            $("button").click(function () {
                $("p").hide();
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>Hello World</p>
        <p>This is Diwa</p>
        <p>Welcome To our World</p>
        <button>Click Me</button>
    </div>
    </form>
</body>
</html>

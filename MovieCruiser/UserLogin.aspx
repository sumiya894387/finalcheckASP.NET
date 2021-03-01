<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="MovieCruiser.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Enter Name "></asp:Label>
            <br />
            <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Password"></asp:Label>
            <br />
            <asp:TextBox ID="Txtpassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnclick" runat="server" OnClick="Unnamed1_Click" Text="Login" />
            <br />
        </div>
    </form>
</body>
</html>

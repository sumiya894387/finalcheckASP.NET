<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="customerheader.ascx.cs" Inherits="MovieCruiser.customerheader" %>
    <link href="StyleSheet1.css" rel="stylesheet" />
<style type="text/css">
    .auto-style1 {
        margin-left: 0px;
    }
    #header{
        background-color:blue;
    }
</style>
<h1 id="header">
     <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Movie cruiser" Font-Size="Large"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="36px" ImageUrl="~/image/movies.png" Width="40px" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" font-size="Large" ForeColor="White" NavigateUrl="~/MovieListCustomer.aspx">Movies</asp:HyperLink>


     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" ForeColor="White" NavigateUrl="~/Favorites.aspx">Favorites</asp:HyperLink>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     </h1>

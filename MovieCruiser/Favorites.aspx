<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="~/Customermasterpage.Master" CodeBehind="Favorites.aspx.cs" Inherits="MovieCruiser.Favorites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Movies" runat="server" Text="Movies" Font-Size="X-Large"></asp:Label>
      <asp:Panel ID="NotificationPanel" Visible="false" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#33CC33" HorizontalAlign="Center">Movie removed from Favorites Successfully<br /></asp:Panel>
     <br />
     <br />
   <asp:GridView ID="FavoritesGridView" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="2" GridLines="None" HorizontalAlign="Center"  Width="565px">
      <Columns>
            
            <asp:BoundField HeaderText="Title" DataField="Title" />
            <asp:BoundField HeaderText="Box Office" DataField="BoxOffice" />
            <asp:BoundField HeaderText="Genre" DataField="Genre" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="~\Favorites.aspx?id={0}&ShowPanel=True" Text="Delete" HeaderText="" />
          </Columns>
     </asp:GridView>
    <br />
    <p style="text-indent:485px; font-weight:bold">No. of Favorites:label ID="NoOfFavorites" runat="server" ForeColor="Black"></asp:Label></p>

</asp:Content>
               
                

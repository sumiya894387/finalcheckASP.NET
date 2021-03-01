<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Customermasterpage.Master"CodeBehind="MovieListCustomer.aspx.cs" Inherits="MovieCruiser.MovieListCustomer"%>


   
             <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                
                 <p>
                     &nbsp;<br />
                 </p>
                 <p>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Movies"></asp:Label>
                      <asp:Panel ID="NotificationPanel" Visible="false" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#33CC33" HorizontalAlign="Center">Movie added to Favorites Successfully<br /></asp:Panel>
                     <br />
                     <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" Height="102px" style="margin-right: 0px; margin-left: 62px;" GridLines="None" Width="602px">
                       <Columns>
                <asp:BoundField HeaderText="Title" DataField="Title" />
                <asp:BoundField HeaderText="Box Office" DataField="BoxOffice" />
                <asp:BoundField HeaderText="Genre" DataField="Genre" />
                <asp:CheckBoxField HeaderText="Has Teaser" DataField="HasTeaser" />
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="~\MovieListCustomer.aspx?id={0}&ShowPanel=True" Text="Add to Favorite" HeaderText="Action" />
        </Columns>
        
      
       
    </asp:GridView>
         
       
                 <p>
                     &nbsp;</asp:Content>
                    
                

        
   

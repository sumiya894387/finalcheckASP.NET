<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Customermasterpage.Master"     CodeBehind="RemoveFavorites.aspx.cs" Inherits="MovieCruiser.RemoveFavorites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="notification" runat="server" ForeColor="#00CC00" HorizontalAlign="Center" Visible="False">Movies removed from favorites successfully
                
                 </asp:Panel>
     <br />
     <br />
     <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" style="margin-left: 122px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
       
     <Columns>

             
           <asp:BoundField HeaderText="Title" DataField="Title" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
             <asp:BoundField HeaderText="BoxOffice" DataField="BoxOffice" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
           <asp:BoundField HeaderText="Active" DataField="Active" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
              
              <asp:BoundField HeaderText="Genre" DataField="Genre" ItemStyle-Width="50px" >
                  <ItemStyle Width="100px"></ItemStyle>
             </asp:BoundField>
              <asp:BoundField HeaderText="HasTeaser" DataField="HasTeaser" ItemStyle-Width="50px" >
            
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
            
             <asp:HyperLinkField
            DataNavigateUrlFields="id"
            DataNavigateUrlFormatString="~\RemoveFavorites.aspx?id={0}"
            Text="Delete"
            HeaderText="Action" />

        </Columns>
       
       
    </asp:GridView>
         
       
         <asp:LinqDataSource ID="LinqDataSource2" runat="server" EntityTypeName="">
         </asp:LinqDataSource>


     <br />
     <br />
     <br />


</asp:Content>
                    
                


﻿ <%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Movielistadmin.aspx.cs" Inherits="MovieCruiser.Movielistadmin" %>




  
      
     <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <br />
         <br />
         <br />

         <asp:GridView ID="GridView1" runat="server" BorderStyle="None" GridLines="None" AutoGenerateColumns="False" CssClass="auto-style1" Width="506px" style="margin-left: 156px"> 
       <Columns>
             <asp:BoundField HeaderText="ID" DataField="Id" ItemStyle-Width="3000px" >
<ItemStyle Width="1000px"></ItemStyle>
             </asp:BoundField>
           <asp:BoundField HeaderText="Title" DataField="Title" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
             <asp:BoundField HeaderText="BoxOffice" DataField="BoxOffice" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
           <asp:BoundField HeaderText="Active" DataField="Active" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
              <asp:BoundField HeaderText="DateOfLaunch" DataField="DateOfLaunch" ItemStyle-Width="50px" >
<ItemStyle Width="1000px"></ItemStyle>
             </asp:BoundField>
              <asp:BoundField HeaderText="Genre" DataField="Genre" ItemStyle-Width="50px" >
                  <ItemStyle Width="100px"></ItemStyle>
             </asp:BoundField>
              <asp:BoundField HeaderText="HasTeaser" DataField="HasTeaser" ItemStyle-Width="50px" >
            
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
            
             <asp:HyperLinkField
            DataNavigateUrlFields="id"
            DataNavigateUrlFormatString="~\EditMovie.aspx?id={0}"
            Text="Edit"
            HeaderText="Action" />

        </Columns>

           
          
            

        
       
    </asp:GridView>
         
       
         <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
         </asp:LinqDataSource>


         <br />
         <br />


</asp:Content>


  
      
            
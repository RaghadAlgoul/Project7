<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="p7.Admin.Review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        #header{display:inline-block;color:#333333;margin-left:30px;}
        #gridService{margin-left:30px;width:100%;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 id="header">Review</h2><br /><br />
  
    <asp:GridView ID="gridReview" runat="server" Style="width: 91%; margin-left: 4.5%;" CssClass="table-wrap table thead-primary" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="commentID" HeaderText="ID"></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
            <asp:BoundField DataField="message" HeaderText="Message"></asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="commentID" DataNavigateUrlFormatString="DelReview.aspx?id={0}" Text="Delete" HeaderText="Delete"></asp:HyperLinkField>
          
        </Columns>
        <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" />
            <SortedAscendingCellStyle BackColor="#F5F7FB"  HorizontalAlign="Center"/>
            <SortedAscendingHeaderStyle BackColor="#6D95E1" HorizontalAlign="Center" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" HorizontalAlign="Center"/>
            <SortedDescendingHeaderStyle BackColor="#4870BE" HorizontalAlign="Center" />
    </asp:GridView>
</asp:Content>
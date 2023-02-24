<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="p7.Admin.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #header{display:inline-block;color:#333333;margin-left:30px;}
        #gridService{margin-left:30px;width:100%;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row"><div class="col"><h2 id="header">Services</h2></div><div class="col"><asp:LinkButton ID="addService" runat="server" Height="30px" Width="150px" style="background-color:#333333;border-radius:10px;margin-left:68%;font-weight:bold;text-align:center" OnClick="addService_Click"> + Add New Service</asp:LinkButton></div></div>
    <br /><br />
    
    <asp:GridView ID="gridService" style="width:91%;margin-left:4.5%;" CssClass="table-wrap table thead-primary" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ServiceID" HeaderText="ID" />
            
            <asp:BoundField DataField="ServiceName" HeaderText="Name" />
            <asp:BoundField DataField="ServiceDescription" HeaderText="Description" />
            
            <asp:ImageField HeaderText="Image" DataImageUrlField="ServiceImage" ControlStyle-Width="30px" ControlStyle-Height="30px">
                   <ControlStyle Height="50px" Width="50px"></ControlStyle>
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="ServiceID" DataNavigateUrlFormatString="servicsEdit.aspx?id={0}" HeaderText="Edit" Text="Edit" />
            
            <asp:HyperLinkField DataNavigateUrlFields="ServiceID" DataNavigateUrlFormatString="ServiceDelete.aspx?id={0}" HeaderText="Delete" Text="Delete" />
            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Font-Size="Large"/>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" HorizontalAlign="Center" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" HorizontalAlign="Center"  />
        <SortedDescendingCellStyle BackColor="#E9EBEF" HorizontalAlign="Center" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" HorizontalAlign="Center"  />
    </asp:GridView>



</asp:Content>
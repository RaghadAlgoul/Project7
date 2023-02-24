<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="p7.Admin.Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        #header{display:inline-block;color:#333333;margin-left:30px;}
        #gridService{margin-left:30px;width:100%;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 id="header">Patients</h2><br /><br />
        <asp:GridView ID="gridPatints" style="width:91%;margin-left:4.5%;" CssClass="table-wrap table thead-primary" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone" />
                <asp:ImageField HeaderText="Image" DataImageUrlField="Photo" ControlStyle-Width="30px" ControlStyle-Height="30px">
                   <ControlStyle Height="50px" Width="50px"></ControlStyle>
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"  HorizontalAlign="Center"/>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB"  HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
</asp:Content>
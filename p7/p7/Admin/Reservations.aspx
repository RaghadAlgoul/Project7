<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="p7.Admin.Reservations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        #header{display:inline-block;color:#333333;margin-left:30px;}
        #gridService{margin-left:30px;width:100%;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="header">Reservations</h2><br />
    <div width="70%">
        <div class="input-group" >
           <asp:TextBox ID="TextBox1"  runat="server"  class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" BorderStyle="Solid" BorderColor="#333333" ></asp:TextBox>
             <asp:Button ID="Button2" runat="server" class="btn btn-outline-primary" Text="search" OnClick="Button2_Click" BorderColor="#333333" style="color:#333333" />
      </div>
    </div>
    
     <br />
    <asp:GridView ID="gridReservation" style="width:91%;margin-left:4.5%;" CssClass="table-wrap table thead-primary" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ReservationID" HeaderText="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="ServiceName" HeaderText="Service" />
            <asp:BoundField DataField="Date" HeaderText="Appointment Date" />
            <asp:BoundField DataField="Time" HeaderText="Appointment Time" />
            <asp:HyperLinkField DataNavigateUrlFields="ReservationID" DataNavigateUrlFormatString="Cancel.aspx?id={0}" HeaderText="Cancel" Text="Cancel" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center"  />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
     </asp:GridView>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ServiceDelete.aspx.cs" Inherits="p7.Admin.ServiceDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                 <div class="row">
                                    <div class="card-body text-center">
                                <asp:Image ID="userImg" runat="server" alt="User Image" class="rounded-circle img-fluid" Style="width: 150px;height:150px; border:solid 3px #333333;" />

                                

                            </div>
                                    
                                </div>
                                <div class="row">
                                    <div class="col-sm-3" >
                                        <p class="mb-0" style="font-weight:bold;font-size:20px;color:#333333">Services</p>
                                    </div>
                                    
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col">
                                        <p class="mb-0">Service Name</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Label ID="txtName" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Description</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:Label ID="txtComment" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <hr/>
                                

                                    <div class="col-sm-9" style="margin-left:50%;">
                                        <div class="row">
                                            <div class="col"><asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" class="btn btn-primary" style="margin-left:60%;"/> </div>
                                            <div class="col"><asp:Button ID="del" runat="server" Text="Delete" OnClick="del_Click"  class="btn btn-success"/> </div>

                                        </div>
                                        
                                        
                                        
                                    </div>
                                </div>
                            </div></div>
</asp:Content>
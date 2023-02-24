<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="addService.aspx.cs" Inherits="p7.Admin.addService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .custom-file-input {
            color: transparent;
        }

            .custom-file-input::-webkit-file-upload-button {
                visibility: hidden;
            }

            .custom-file-input::before {
                content: 'Upload new Image';
                color: black;
                display: inline-block;
                background: -webkit-linear-gradient(top, #f9f9f9, #e3e3e3);
                border: 1px solid #999;
                border-radius: 3px;
                padding: 5px 8px;
                outline: none;
                white-space: nowrap;
                -webkit-user-select: none;
                cursor: pointer;
                text-shadow: 1px 1px #fff;
                font-weight: 700;
                font-size: 10pt;
            }

            .custom-file-input:hover::before {
                border-color: black;
            }

            .custom-file-input:active {
                outline: 0;
            }

                .custom-file-input:active::before {
                    background: -webkit-linear-gradient(top, #e3e3e3, #f9f9f9);
                }

        
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                 <div class="row">
                                    <div class="card-body text-center">
                                <asp:Image ID="userImg" runat="server" alt="User Image" ImageUrl="..//assets//img//gallery//uploadImage.png" class="rounded-circle img-fluid" Style="width: 150px;height:150px; " />

                                <br /><br />
                                <asp:FileUpload ID="FileUpload1" runat="server"  style="margin-left: 33%; " />

                            </div>

                                 </div>
                                <div class="row">
                                    <div class="col-sm-3" >
                                        <p class="mb-0" style="font-weight:bold;font-size:20px;color:#333333">New Services</p>
                                    </div>
                                    
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col">
                                        <p class="mb-0">Service Name</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtName" placeholder="write Here" class="form-control" runat="server"  ></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Description</p>
                                    </div>
                                    <div class="col-sm-9">
                                         <textarea id="txtComment" cols="20"  runat="server" rows="2" placeholder="Write here" class="form-control" ></textarea>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>
                                    
                                </div>

                                    <div class="col-sm-9" style="margin-left:50%;">
                                        <div class="row">
                                            
                                            <div class="col"><asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click"  class="btn btn-primary" style="margin-left:60%;"/></div>
                                            <div class="col"><asp:Button ID="update" runat="server" Text="Save"   class="btn btn-success" OnClick="update_Click"/> </div>

                                        </div>
                                        
                                        
                                        
                                    </div>
                                </div>
                            </div></div>
</asp:Content>
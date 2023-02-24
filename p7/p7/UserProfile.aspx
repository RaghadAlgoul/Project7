<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="p7.UserProfile" %>


<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <style>
        .gridReservatoin {
            width: 100%;
            height: 110px;
            font-size: 12px;
            text-align: center;
        }
    </style>
</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--    <form id="form1" runat="server">--%>
    <br />
    <br />
    <section style="background-color: #eee;">
        <div class="container py-5" />
        <div class="row">
            <div class="col-lg-4">
                <div class="card mb-4" style="border: solid 3px #166ab5">
                    <div class="card-body text-center">
                        <asp:Image ID="userImg" runat="server" alt="User Image" class="rounded-circle img-fluid" Style="width: 50%;" />

                        <h5 id="name1" runat="server" class="my-3" style="font-weight: bold; color: #2c4964; font-size: 15px;"></h5>
                        <%--<input id="editImage" runat="server" type="file" style="margin-left: 34%;" visible="false" class="custom-file-input" />--%>
                        <asp:FileUpload ID="FileUpload1" accept="image/png, image/gif, image/jpeg" runat="server" Style="margin-left: 34%;" Visible="false" />
                    </div>
                </div>
                <%--////////////////////////////////////////////////////////////////////////////////////////////////--%>
                <div class="card mb-4 mb-lg-0" style="border: solid 3px #166ab5">
                    <div class="card-body p-0">
                        <ul class="list-group list-group-flush rounded-3">
                           <%-- <li class="list-group-item d-flex justify-content-between align-items-center p-3" style="text-align: left">

                                <asp:LinkButton ID="info" runat="server" Style="text-decoration: none; font-weight: bold; color: #2c4964; margin-left: 10%; font-size: 15px;" OnClick="info_Click">User Information</asp:LinkButton>
                            </li>--%>
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3" style="text-align: left">

                                <asp:LinkButton ID="datesBtn" runat="server" Style="text-decoration: none; font-weight: bold; color: #2c4964; margin-left: 10%; font-size: 15px;" OnClick="datesBtn_Click">Reservation Dates</asp:LinkButton>
                            </li>
                            <%-- <li class="list-group-item d-flex justify-content-between align-items-center p-3" style="text-align: left">

                                <asp:LinkButton ID="passwordBtn" runat="server" Style="text-decoration: none; font-weight: bold; color: #2c4964; margin-left: 10%; font-size: 15px;" OnClick="passwordBtn_Click">Change Password</asp:LinkButton>
                            </li>--%>
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3" style="text-align: left">

                                <asp:LinkButton ID="LinkButton3" runat="server" Style="text-decoration: none; font-weight: bold; color: #2c4964; margin-left: 10%; font-size: 15px;" OnClick="LinkButton3_Click">Add Comment</asp:LinkButton>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <%--////////////////////////////////////////////////////////////////////////////////////////////////--%>
            <%--                   <asp:PlaceHolder ID="infoPlac" runat="server" Visible="true">--%>
            <div class="col-lg-8">
                <div class="card mb-4" style="border: solid 3px #166ab5">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3" style="width: 100%">
                                <p class="mb-0" style="font-weight: bold; font-size: 25px; color: #2c4964;">User Information</p>
                            </div>

                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0" style="color: #2c4964; font-size: 15px;">Name</p>
                            </div>
                            <div class="col-sm-9">
                                <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                                    <p id="nameLabel" runat="server" class="text-muted mb-0" style="color: #2c4964; font-size: 15px;"></p>
                                </asp:PlaceHolder>
                                <asp:PlaceHolder ID="PlaceHolder2" runat="server" Visible="false">
                                    <asp:TextBox ID="txtName" class="form-control" runat="server" Style="color: #2c4964; font-size: 15px;"></asp:TextBox></asp:PlaceHolder>

                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0" style="color: #2c4964; font-size: 15px;">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <asp:PlaceHolder ID="PlaceHolder3" runat="server">
                                    <p id="emailLabel" runat="server" class="text-muted mb-0" style="color: #2c4964; font-size: 15px;"></p>
                                </asp:PlaceHolder>
                                <asp:PlaceHolder ID="PlaceHolder4" runat="server" Visible="false">
                                    <asp:TextBox ID="txtEmail" class="form-control" runat="server" Style="color: #2c4964; font-size: 15px;"></asp:TextBox></asp:PlaceHolder>
                            </div>
                        </div>
                        <hr />


                        <div class="row">
                            <div style="padding-left: 0;">
                                <div class="col-sm-3">
                                    <p class="mb-0" style="color: #2c4964; font-size: 15px;">Phone</p>
                                </div>
                                <div class="col-sm-9">
                                    <asp:PlaceHolder ID="PlaceHolder5" runat="server">
                                        <p id="phoneLabel" runat="server" class="text-muted mb-0" style="color: #2c4964; font-size: 15px;"></p>
                                    </asp:PlaceHolder>
                                    <asp:PlaceHolder ID="PlaceHolder6" runat="server" Visible="false">
                                        <asp:TextBox ID="txtPhone" class="form-control" runat="server" Style="color: #2c4964; font-size: 15px;"></asp:TextBox></asp:PlaceHolder>

                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0"></p>
                            </div>

                            <div class="col-sm-9">
                                <asp:Button ID="EditBtn" runat="server" OnClick="EditBtn_Click1" Text="Edit" class="btn btn-success" Style="margin-left: 80%; width: 100px; height: 40px; font-size: 15px; background-color: #166ab5" />
                                <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" class="btn btn-success" Style="margin-left: 80%; width: 100px; height: 40px; font-size: 15px; background-color: #166ab5" Visible="false" />
                            </div>

                        </div>
                    </div>
                </div>
                <%--//////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
                 <div>
                <asp:PlaceHolder ID="datesPlace" runat="server" Visible="false">
                    <div width="70%">
                        <div class="card mb-4" style="border: solid 3px #166ab5">

                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3" style="width: 100%">
                                        <p class="mb-0" style="font-weight: bold; font-size: 25px; color: #2c4964;">Reservation Dates</p>
                                    </div>
                                    <asp:GridView CssClass="gridReservatoin" ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                                        <Columns>
                                            <asp:BoundField DataField="Name" HeaderText="Name"></asp:BoundField>
                                            <asp:BoundField DataField="Date" HeaderText="Date"></asp:BoundField>
                                            <asp:BoundField DataField="Time" HeaderText="Time"></asp:BoundField>
                                            <asp:HyperLinkField DataNavigateUrlFields="ReservationID" DataNavigateUrlFormatString="deleteReservation.aspx?id={0}" Text="Delete" HeaderText="Action"></asp:HyperLinkField>
                                        </Columns>
                                        <EditRowStyle BackColor="#999999"></EditRowStyle>

                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                                        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                                        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                                    </asp:GridView>
                                </div>
                                <hr />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                        <asp:BoundField DataField="ServiceName" HeaderText="Service" />
                                        <asp:BoundField DataField="AppointmentDate" HeaderText="Date" />
                                        <asp:BoundField DataField="AppointmentTime" HeaderText="Time" />
                                        <asp:HyperLinkField DataNavigateUrlFields="ReservationID" DataNavigateUrlFormatString="delRres.aspx?id={0}" HeaderText="Cancel" Text="cancel" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>

                            </div>
                        </div>
                    </div>
                </asp:PlaceHolder>
            </div>
                 <%--////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
                  <asp:PlaceHolder ID="commentPlace" runat="server" Visible="false">
            <div width="70%">
                <div class="card mb-4" style="border: solid 3px #166ab5">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3" style="width: 100%">
                                <p class="mb-0" style="font-weight: bold; font-size: 25px; color: #2c4964;">Add Your Comment</p>
                            </div>

                        </div>
                        <br />
                        <div class="row">

                            <div class="col-sm-3" style="width: fit-content">
                                <asp:Image ID="commentImg" runat="server" Width="50px" Height="50px" class="rounded-circle img-fluid" Style="display: inline-block" />
                            </div>
                            <div class="col-sm-3" style="width: 90%">
                                <textarea id="txtComment" cols="20" maxlength="120" runat="server" rows="2" aria-multiline="true" placeholder="Write here" class="form-control" style="font-size: 10px;"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-sm-3" style="width: 100%">
                            <asp:Button ID="PostBtn" runat="server" Text="Post" class="btn btn-success" Style="margin-left: 85%; width: 100px; height: 40px; font-size: 15px; background-color: #166ab5" OnClick="PostBtn_Click" />
                            <br />
                            <br />
                        </div>

                    </div>

                </div>
            </div>
        </asp:PlaceHolder>
   
            </div>
            <%--                        </asp:PlaceHolder>--%>
           
           
            <div></div>

            <%--////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

            <asp:PlaceHolder ID="changePassPlace" runat="server" Visible="false">
                <div width="70%">
                    <div class="card mb-4" style="border: solid 3px #166ab5">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3" style="width: 100%">
                                    <p class="mb-0" style="font-weight: bold; font-size: 25px; color: #2c4964;">Change Password</p>
                                </div>

                            </div>
                            <hr />
                            <br />



                            <div class="row">

                                <div class="col-sm-3" style="width: 100%">
                                    <p id="P1" runat="server" class="text-muted mb-0" style="font-size: 15px">Your Email</p>
                                    <asp:TextBox ID="txtCurrent" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please enter a current password" ControlToValidate="txtCurrent" Style="color: red; font-size: 12px" ValidationGroup="validate"></asp:RequiredFieldValidator>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-sm-3" style="width: 100%">
                                    <p id="P2" runat="server" class="text-muted mb-0" style="font-size: 15px">New Password</p>
                                    <asp:TextBox ID="txtNew" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please enter a new password" ControlToValidate="txtConfirm" Style="color: red; font-size: 12px" ValidationGroup="validate"></asp:RequiredFieldValidator>

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-sm-3" style="width: 100%">
                                    <p id="P3" runat="server" class="text-muted mb-0" style="font-size: 15px">Confirm Password</p>
                                    <asp:TextBox ID="txtConfirm" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please enter a confirm password" ControlToValidate="txtConfirm" Style="color: red; font-size: 12px" ValidationGroup="validate"></asp:RequiredFieldValidator>
                                </div>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="* New Password and Confirm Password not match" ControlToValidate="txtConfirm" ControlToCompare="txtNew" Style="color: red; font-size: 12px" ValidationGroup="validate"></asp:CompareValidator>

                                <div class="row">
                                    <div class="col-sm-3" style="width: 100%">
                                        <asp:Button ID="savePassBtn" runat="server" Text="Save Changes" OnClick="savePassBtn_Click" class="btn btn-success" Style="margin-left: 85%; width: 120px; height: 40px; font-size: 15px; background-color: #166ab5" ValidationGroup="validate" />

                                        <br />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
        </div>
        <%--////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
      
    </section>


    <%--    </form>--%>
</asp:Content>

<%@ Page Title="Register" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="p7.Account.Register" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

    <link href="../Css/StyleSheet1.css" rel="stylesheet" />
    <title>Register</title>

</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="login" id="firstContainer">
        <h2 class="active">Register</h2>
         <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <asp:PlaceHolder runat="server" ID="PlaceHolder1" Visible="false">
            <p class="text-danger">
                <asp:Literal runat="server" ID="FailureText" />
            </p>
        </asp:PlaceHolder>

<%--        <asp:TextBox runat="server" ID="TextBox1" class="text" TextMode="Email" placeholder="Enter Your Email" />

        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required." />--%>


        <asp:TextBox runat="server" ID="Name" class="text bgcolorpoacity" placeholder="Enter Your Name" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Name" CssClass="text-danger" ErrorMessage="field is required." />

       

        <asp:TextBox runat="server" ID="Email" class="text bgcolorpoacity" TextMode="Email" placeholder="Enter Your Email" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="field is required." />



       <%-- <asp:TextBox runat="server" ID="TextBox2" TextMode="Password" class="text" placeholder="Enter Your Password" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />--%>

         <asp:TextBox runat="server" ID="Password" TextMode="Password" class="text bgcolorpoacity" placeholder="Enter Your Password" />
         <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="field is required." />



        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="text bgcolorpoacity" placeholder="Confirm password" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="field is required." />
        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />


         <asp:TextBox runat="server" ID="Age" class="text bgcolorpoacity" TextMode="Date" placeholder="Enter Your Age" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Age" CssClass="text-danger" ErrorMessage="field is required." />

        <asp:TextBox runat="server" ID="Phone" class="text bgcolorpoacity"   placeholder="Enter Your Phone Number" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone" CssClass="text-danger" ErrorMessage="field is required." />
        <br />
      <label style="color:#534d4d; font-size:20px; margin-right:10px;">gender</label>
       <input type="radio" name="gender" id="male" value="0" /><label for="male" class="labelradio">Male</label>  <input type="radio" name="gender" id="femail" value="1" /> <label for="femail" style="color:white;">Femail</label>
        <%--<asp:Button runat="server" OnClick="LogIn" Text="Sign In"  class="signin" />--%>
         <asp:Button  runat="server" OnClick="CreateUser_Click" class="signin later" Text="Register"  />
        <hr>
        <p class="dont">
           have an account ? <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">SignIn</asp:HyperLink>
        </p>
    </div>





   

<%--    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">--%>
                <%--<asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />--%>
          <%--  </div>
        </div>--%>
        <%--<div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">--%>
               <%-- <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />--%>
            <%--</div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">--%>
                <%--<asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
         <%--   </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>--%>
</asp:Content>

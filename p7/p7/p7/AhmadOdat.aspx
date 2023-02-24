<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AhmadOdat.aspx.cs" Inherits="p7.AhmadOdat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    
    <style>
        .headerTitle {
            font-size: 36px;
            line-height: 25px;
            color: #2c4964;
            font-weight: 400;
           padding: 0px 31%;

        }
        .nextPrev{
            text-align:center;
            text-decoration:none !important;
            font-weight:900;
        }
        TABLE A {
            text-decoration: none;
        }

        .donate-now {
            list-style-type: none;
            margin: 25px 0 0 0;
            padding: 0;
            display: flex;
            flex-direction: column;
        }

            .donate-now li {
                float: left;
                margin: 0 5px 0 0;
                width: 90%;
                height: 40px;
                position: relative;
                margin-bottom: 10px;
                margin-left:10px;
            }

            .donate-now label,
            .donate-now input {
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: #1977cc;
                color: white;
                text-align: center;
                cursor: pointer;
                font-size: 18px;
                width: 90%;
                margin-left: 30px;
                border-radius: 17px;
                height: 38px;
            }

                .donate-now input[type="radio"] {
                    opacity: 0.01;
                    z-index: 100;
                }

                    .donate-now input[type="radio"]:checked + label,
                    .Checked + label {
                        background: #0c406e;
                        box-shadow: 3px 5px 5px rgba(55, 70, 64, 0.4);
                    }

            .donate-now label {
                padding: 5px;
                border: 1px solid #CCC;
                cursor: pointer;
                z-index: 90;
            }

                .donate-now label:hover {
                    background: #DDD;
                }
       #main-container{
           display:flex;
           justify-content:center;
           flex-wrap:wrap;
           margin-top:110px;
       }
       #top-div{
           width:80%;
           display:flex;
       }
       #dateTimeDiv{
           width:74%;
       }
       #servecisDiv{
           width:24%;
       }
       #secondDiv{
           width:80%;
           margin-top:20px;
           padding-bottom:65px;
       }
       .dropStyle:focus{
           box-shadow: 3px 3px 10px #60CAE2;
       }
       .btnSubmit2{
           background-color:#1977cc;
           color:white;
           width:130px;
           height:40px;
           font-size:23px;
           text-align:center;
           border:none;
           border-radius:10px;
           font-weight:600;
           margin-left: 29px;
       }
       .titleSpan{
           font-size: 30px;
           font-weight:600;
           margin-right:20px;
           color:#2c4964;
       }
       .dayTitle{
           text-align:center;
           font-size:20px;
           text-decoration:underline;
           color:#2c4964;

       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

         <h2>schedule an appointment</h2>
        <div id="main-container">
            
            <div id="top-div">
               
                <div id="dateTimeDiv">
                    <asp:Calendar ID="Calendar1" runat="server" Height="440px" OnSelectionChanged="Calendar1_SelectionChanged" Width="100%" NextPrevStyle-CssClass="nextPrev">
                        <TitleStyle CssClass="headerTitle" BackColor="White" HorizontalAlign="NotSet" />
                        <NextPrevStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Underline="False" ForeColor="#1977cc" Font-Size="XX-Large" Font-Strikeout="True" />
                        <SelectedDayStyle BackColor="#1977cc" Font-Bold="true" />
                        <DayHeaderStyle  CssClass="dayTitle" />
                        <DayStyle Font-Size="14px" Font-Bold="true" ForeColor="#2c4964" />
                    </asp:Calendar>
                </div>
                <div id="servecisDiv">
                    <ul class="donate-now" id="container1" runat="server"></ul>
                </div>
            </div>
            <div id="secondDiv">
                <span class="titleSpan">Choose a service</span>
                <asp:DropDownList CssClass="dropStyle"  ID="DropDownList1" runat="server" Height="40px" Width="350px"></asp:DropDownList>
                <asp:Button ID="Button1" runat="server"  CssClass="btnSubmit2" Text="Submit" OnClick="Button1_Click" />         <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

            </div>

        </div>



      
</asp:Content>

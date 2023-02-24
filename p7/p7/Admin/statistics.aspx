<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="statistics.aspx.cs" Inherits="p7.Account.statistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style>
          #header{display:inline-block;color:#333333;margin-left:30px;}
        #gridService{margin-left:30px;width:100%;}
        *,
:before,
:after { 
    box-sizing: border-box;
}

html {
    background-color: #333333;
    color: white;
}

@keyframes fadeInScale {
  0% {
    opacity: 0;
    transform: scale(0) translateY(50%);
  }
    90% {
        transform: scale(1.05);
    }
  100% {
    opacity: 1;
    transform: scale(1) translateY(0);
  }
}

.container {
    position: absolute;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.card {
    position: relative;
    width: 20em;
    background-color: #333333;
    transition: all .3s ease-in-out;

    &:hover {
        box-shadow: 0 10px 20px 10px rgba(#333333, .2);
    }
}

.cardlink {
    display: #333333;
    padding: 1em;
    text-decoration: none;
}

.cardicon {
    position: absolute;
    width: 4em;
    height: 4em;
    transition: all .3s ease-in-out;

    .card:hover & {
        opacity: 0;
        transform: scale(0);
    }
}

.cardmedia {
    padding: 2em 0;

    svg path {
        opacity: 0;
        transition: all .3s ease-in-out;
        transform-origin: center center;
    }

    .card:hover & {
        svg path {
            animation: fadeInScale .3s ease-in-out forwards;
        }

        svg path:nth-child(2) {
            animation-delay: .1s;
        }

        svg path:nth-child(3) {
            animation-delay: .2s;
        }
    }
}

.cardheader {
    position: relative;
}

.cardheader-title {
    margin: 0 0 .25em;
    color: white;
}

.cardheader-meta {
    margin: 0;
    color: #999;
}

.card__header-icon {
    opacity: 0;
    position: absolute;
    right: 0;
    top: 50%;
    margin-top: -1em;
    transform: translateX(-20%);
    width: 2em;
    height: 2em;
    transition: all .3s ease-in-out;

    .card:hover & {
        opacity: 1;
        transform: translateX(0);
    }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="header">Statistics</h2><br /><br />
   
            <div style="display:flex;flex-wrap:wrap;justify-content:space-around">
                <article class="card" >
        <a href="#" class="cardlink">
            <div class="cardmedia" style="text-align:center">
                 <i class="fas fa-user" style="font-size:70px;color:white;"></i><br />
                 <h4  runat="server" style="color:white">Paitents </h4>
                <h4 id="c1" runat="server" style="color:white"></h4>
            </div>
            </a>
    </article>


                <%--<i class="fa-regular fa-calendar-check"></i>--%>
                <%--<i class="fa-regular fa-comment"></i>--%>
                 <article class="card" >
        <a href="#" class="cardlink">
            <div class="cardmedia" style="text-align:center">
                 <i class="fa-regular fa-calendar-check" style="font-size:70px;color:white;"></i><br />
                 <h4  runat="server" style="color:white">Reservations </h4>
                <h4 id="c2" runat="server" style="color:white"></h4>
            </div>
            </a>
    </article>
 <article class="card" >
        <a href="#" class="cardlink">
            <div class="cardmedia" style="text-align:center">
                 <i class="fa-regular fa-comment" style="font-size:70px;color:white;"></i><br />
                 <h4  runat="server" style="color:white">Reviews </h4>
                <h4 id="c3" runat="server" style="color:white">5</h4>
            </div>
                </a>
    </article>
               </div> 
           
        

</asp:Content>
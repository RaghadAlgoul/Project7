<%@ Page Title="Home Page" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="p7._Default" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">

    <style>
        div.container2 {
	width: 800px;
	height: 530px;
	position: relative;
	margin: 20px;
}



        div.image2 {
	height: 100%;
	background-repeat: no-repeat;
	background-position: top left;
	background-size: cover;
	position: absolute;
	top: 0px;
	left: 0px;
}

div.before2 {
	width: 50%;
	z-index: 2;
}

div.after2 {
	width: 100%;
	z-index: 1;
}




input.slider {
	width: 100%;
	height: 100%;
	outline: none;
	background-color: transparent;
	position: absolute;
	margin: 0px;
	z-index: 3;
	cursor: pointer;
	appearance: none;
	-moz-appearance: none;
	-webkit-appearance: none;
	transition: 0.25s all ease-in-out;
	-moz-transition: 0.25s all ease-in-out;
	-webkit-transition: 0.25s all ease-in-out;
	z-index: 4;
}

input.slider::-moz-range-thumb {
	width: 6px;
	height: 600px;
	background-color: white;
	cursor: pointer;
}

input.slider::-webkit-slider-thumb {
	width: 6px;
	height: 530px;
	background-color: white;
	cursor: pointer;
	appearance: none;
	-moz-appearance: none;
	-webkit-appearance: none;
}





div.slider-button {
	width: 30px;
	height: 30px;
	border-radius: 50%;
	-moz-broder-radius: 50%;
	-webkit-border-radius: 50%;
	background-color: white;
	position: absolute;
	top: calc(50% - 18px);
	left: calc(50% - 18px);
	cursor: pointer;
	z-index: 3;
}

div.slider-button:before {
	color: #555;
	position: absolute;
	top: 3px;
	left: 0px;
	content: "\2B9C";
}

div.slider-button:after {
	color: #555;
	position: absolute;
	top: 3px;
	right: 0px;
	content: "\2B9E";
}

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



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">
        <div class="container">
            <h1>Welcome to Globe</h1>
            <h2>We are team of talented Dentists we make your smile more beautiful</h2>
            <a href="Reservation.aspx" class="btn-get-started scrollto">Reservation Now</a>
        </div>
    </section>
    <!-- End Hero -->

    <main id="main">

        <!-- ======= Why Us Section ======= -->
        <section id="why-us" class="why-us">
            <div class="container">

                <div class="row">
                    <div class="col-lg-4 d-flex align-items-stretch">
                        <div class="content">
                            <h3>Why Choose Globe?</h3>
                            <p>
                                There are many reasons to choose our dental clinic, including our experienced and highly trained staff, our state-of-the-art equipment and technology, and our commitment to providing personalized, compassionate care to each and every patient. Additionally, we offer a wide range of services, including preventative care, cosmetic dentistry, and restorative treatments, to ensure that all of our patients' dental needs are met. 
                            </p>
                            <div class="text-center">
                                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 d-flex align-items-stretch">
                        <div class="icon-boxes d-flex flex-column justify-content-center">
                            <div class="row">
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class="bx bx-receipt"></i>
                                        <h4>Corporis voluptates sit</h4>
                                        <p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class="bx bx-cube-alt"></i>
                                        <h4>Ullamco laboris ladore pan</h4>
                                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 d-flex align-items-stretch">
                                    <div class="icon-box mt-4 mt-xl-0">
                                        <i class="bx bx-images"></i>
                                        <h4>Labore consequatur</h4>
                                        <p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End .content-->
                    </div>
                </div>

            </div>
        </section>
        <!-- End Why Us Section -->
        <!-- ======= Counts Section ======= -->
       <%-- <section id="counts" class="counts">
            <div class="container">

                <div class="row">

                    <div class="col-lg-3 col-md-6">
                        <div class="count-box">
                            <i class="fas fa-user-md"></i>
                            <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Doctors</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
                        <div class="count-box">
                            <i class="far fa-hospital"></i>
                            <span data-purecounter-start="0" data-purecounter-end="18" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Departments</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                        <div class="count-box">
                            <i class="fas fa-flask"></i>
                            <span data-purecounter-start="0" data-purecounter-end="12" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Research Labs</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                        <div class="count-box">
                            <i class="fas fa-award"></i>
                            <span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Awards</p>
                        </div>
                    </div>

                </div>

            </div>
        </section>--%>
        <!-- End Counts Section -->
        <!-- ======= Services Section ======= -->
        <section id="services" class="services" >
            <div class="container">

                <div class="section-title">
                    <br /><br />
                    <h2>Services</h2>
                    <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div style="padding: 80px 70px;margin-bottom: 25px;width: 100%;" class="icon-box">
                            <div class="icon"><img style="width: 280px;border-radius: 28px;height: 190px;margin-top: 20px;" src="images\COSMETIC DENTISTRY.jpg" /></div>
                            <h4 style="margin-top:88px;"><a href="">COSMETIC DENTISTRY</a></h4>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div style="padding: 80px 70px;margin-bottom: 25px;width: 100%;" class="icon-box">
                            <div class="icon"><img style="width: 280px;border-radius: 28px;height: 190px;margin-top: 20px;" src="images\ENDODONTICS.png" /></div>
                            <h4 style="margin-top:88px;"><a href="">ENDODONTICS</a></h4>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div style="padding: 80px 70px;margin-bottom: 25px;width: 100%;" class="icon-box">
                            <div class="icon"><img style="width: 280px;border-radius: 28px;height: 190px;margin-top: 20px;" src="images\DENTAL IMPLANTS.jpeg" /></div>
                            <h4 style="margin-top:88px;"><a href="">DENTAL IMPLANTS</a></h4>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div style="padding: 80px 70px;margin-bottom: 25px;width: 100%;" class="icon-box">
                            <div class="icon"><img style="width: 280px;border-radius: 28px;height: 190px;margin-top: 20px;" src="images\SURGICAL TREATMENTS.jpg" /></div>
                            <h4 style="margin-top:88px;"><a href="">SURGICAL TREATMENTS</a></h4>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div style="padding: 80px 70px;margin-bottom: 25px;width: 100%;" class="icon-box">
                            <div class="icon"><img style="width: 280px;border-radius: 28px;height: 190px;margin-top: 20px;" src="images\PROSTHODONTICS.jpeg" /></div>
                            <h4 style="margin-top:88px;"><a href="">PROSTHODONTICS</a></h4>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div style="padding: 80px 70px;margin-bottom: 25px;width: 100%;" class="icon-box">
                            <div class="icon"><img style="width: 280px;border-radius: 28px;height: 190px;margin-top: 20px;" src="images\children-dental-clinic.png" /></div>
                            <h4 style="margin-top:88px;"><a href="">PAEDIATRIC DENTISTRY</a></h4>
                           
                        </div>
                    </div>

                   <%-- <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                        <div class="icon-box">
                            <div class="icon"><i class="fas fa-pills"></i></div>
                            <h4><a href="">Sed ut perspiciatis</a></h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
                        <div class="icon-box">
                            <div class="icon"><i class="fas fa-hospital-user"></i></div>
                            <h4><a href="">Magni Dolores</a></h4>
                            <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                        <div class="icon-box">
                            <div class="icon"><i class="fas fa-dna"></i></div>
                            <h4><a href="">Nemo Enim</a></h4>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                        <div class="icon-box">
                            <div class="icon"><i class="fas fa-wheelchair"></i></div>
                            <h4><a href="">Dele cardo</a></h4>
                            <p>Quis consequatur saepe eligendi voluptatem consequatur dolor consequuntur</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                        <div class="icon-box">
                            <div class="icon"><i class="fas fa-notes-medical"></i></div>
                            <h4><a href="">Divera don</a></h4>
                            <p>Modi nostrum vel laborum. Porro fugit error sit minus sapiente sit aspernatur</p>
                        </div>
                    </div>--%>

                </div>

            </div>
        </section>
        <!-- End Services Section vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv-->
      
        <!-- Service Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row g-5 mb-5">
                <div class="col-lg-5 wow zoomIn" data-wow-delay="0.3s" style="min-height: 400px;">

                    <div class="twentytwenty-container position-relative h-100 rounded overflow-hidden">
                        <img class="position-absolute w-100 h-100" src="images/wesambefor.jpg" style="object-fit: cover;">
                        <img class="position-absolute w-100 h-100" src="images/wesamafter.jpg" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-7">
            <h2 style="font-size: 32px; font-weight: bold; margin-bottom: 20px; text-align: center; position: relative; color: #2c4964;">schedule an appointment</h2>
            <asp:Calendar ID="Calendar1" runat="server" Height="440px" OnSelectionChanged="Calendar1_SelectionChanged" Width="100%" NextPrevStyle-CssClass="nextPrev">
                        <TitleStyle CssClass="headerTitle" BackColor="White" HorizontalAlign="NotSet" />
                        <NextPrevStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Underline="False" ForeColor="#1977cc" Font-Size="XX-Large" Font-Strikeout="True" />
                        <SelectedDayStyle BackColor="#1977cc" Font-Bold="true" />
                        <DayHeaderStyle  CssClass="dayTitle" />
                        <DayStyle Font-Size="14px" Font-Bold="true" ForeColor="#2c4964" />
                    </asp:Calendar>

                   
                </div>
            </div>
           


        </div>
    </div>
    <!-- Service End -->
        <!-- ======= Doctors Section ======= -->
        <section id="doctors" class="doctors">
            <div class="container">

                <div class="section-title">
                    <h2>Doctors</h2>
                    <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                </div>

                <div class="row">

                    <div class="col-lg-6">
                        <div class="member d-flex align-items-start">
                            <div class="pic">
                                <img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
                            <div class="member-info">
                                <h4>Walter White</h4>
                                <span>Chief Medical Officer</span>
                                <p>Explicabo voluptatem mollitia et repellat qui dolorum quasi</p>
                                <div class="social">
                                    <a href=""><i class="ri-twitter-fill"></i></a>
                                    <a href=""><i class="ri-facebook-fill"></i></a>
                                    <a href=""><i class="ri-instagram-fill"></i></a>
                                    <a href=""><i class="ri-linkedin-box-fill"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 mt-4 mt-lg-0">
                        <div class="member d-flex align-items-start">
                            <div class="pic">
                                <img src="assets/img/doctors/doctors-2.jpg" class="img-fluid" alt=""></div>
                            <div class="member-info">
                                <h4>Sarah Jhonson</h4>
                                <span>Anesthesiologist</span>
                                <p>Aut maiores voluptates amet et quis praesentium qui senda para</p>
                                <div class="social">
                                    <a href=""><i class="ri-twitter-fill"></i></a>
                                    <a href=""><i class="ri-facebook-fill"></i></a>
                                    <a href=""><i class="ri-instagram-fill"></i></a>
                                    <a href=""><i class="ri-linkedin-box-fill"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 mt-4">
                        <div class="member d-flex align-items-start">
                            <div class="pic">
                                <img src="assets/img/doctors/doctors-3.jpg" class="img-fluid" alt=""></div>
                            <div class="member-info">
                                <h4>William Anderson</h4>
                                <span>Cardiology</span>
                                <p>Quisquam facilis cum velit laborum corrupti fuga rerum quia</p>
                                <div class="social">
                                    <a href=""><i class="ri-twitter-fill"></i></a>
                                    <a href=""><i class="ri-facebook-fill"></i></a>
                                    <a href=""><i class="ri-instagram-fill"></i></a>
                                    <a href=""><i class="ri-linkedin-box-fill"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 mt-4">
                        <div class="member d-flex align-items-start">
                            <div class="pic">
                                <img src="assets/img/doctors/doctors-4.jpg" class="img-fluid" alt=""></div>
                            <div class="member-info">
                                <h4>Amanda Jepson</h4>
                                <span>Neurosurgeon</span>
                                <p>Dolorum tempora officiis odit laborum officiis et et accusamus</p>
                                <div class="social">
                                    <a href=""><i class="ri-twitter-fill"></i></a>
                                    <a href=""><i class="ri-facebook-fill"></i></a>
                                    <a href=""><i class="ri-instagram-fill"></i></a>
                                    <a href=""><i class="ri-linkedin-box-fill"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- End Doctors Section -->
        <!-- ======= Testimonials Section ======= -->
        <section id="testimonials" class="testimonials">
            <div class="container">

                <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                    <div class="swiper-wrapper" runat="server" id="commentcard">

                        <%--<div class="swiper-slide">
                            <div class="testimonial-wrap">
                                <div class="testimonial-item">
                                    <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                    <h3>Saul Goodman</h3>
                                    <h4>Ceo &amp; Founder</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div>
                        </div>--%>
                        <!-- End testimonial item -->

<%--                        <div class="swiper-slide">
                            <div class="testimonial-wrap">
                                <div class="testimonial-item">
                                    <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                    <h3>Sara Wilsson</h3>
                                    <h4>Designer</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End testimonial item -->

                        <div class="swiper-slide">
                            <div class="testimonial-wrap">
                                <div class="testimonial-item">
                                    <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                    <h3>Jena Karlis</h3>
                                    <h4>Store Owner</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End testimonial item -->

                        <div class="swiper-slide">
                            <div class="testimonial-wrap">
                                <div class="testimonial-item">
                                    <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                    <h3>Matt Brandon</h3>
                                    <h4>Freelancer</h4>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                                       <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End testimonial item -->--%>
                    </div>
                </div>
            </div>
            <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container">

        <div class="section-title">
          <h2>Gallery</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>
      </div>

      <div class="container-fluid">
        <div class="row g-0">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/1.jpeg" class="galelry-lightbox">
                <img src="assets/img/gallery/1.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/2.jpeg" class="galelry-lightbox">
                <img src="assets/img/gallery/2.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/3.jpeg" class="galelry-lightbox">
                <img src="assets/img/gallery/3.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/4.jpeg" class="galelry-lightbox">
                <img src="assets/img/gallery/4.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/5.jpeg" class="galelry-lightbox">
                <img src="assets/img/gallery/5.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/6.jpeg" class="galelry-lightbox">
                <img src="assets/img/gallery/6.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/7.jpeg" class="galelry-lightbox">
                <img src="assets/img/gallery/7.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/8.jpeg" class="galelry-lightbox">
                <img src="assets/img/gallery/8.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Gallery Section -->

            <script src="JavaScript.js"></script>
    </section>
</asp:Content>

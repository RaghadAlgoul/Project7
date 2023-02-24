<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="p7.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <br /><br /><br /><br /><br />
        <h1 style="text-align:center;font-weight:bold;font-size:40px;color:#2c4964">About Us</h1><br /><br />
      <div class="container-fluid">

        <div class="row">
          <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch position-relative">
            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox play-btn mb-4"></a>
          </div>

          <div class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
            <h3>Enim quis est voluptatibus aliquid consequatur fugiat</h3>
<p style="font-size:medium">At Globe Dental Clinic, we are dedicated to providing the highest quality dental care to our patients. Our team of experienced and highly skilled dentists, hygienists, and support staff are committed to helping our patients achieve and maintain optimal oral health.

We use state-of-the-art equipment and technology to provide a wide range of services, including preventative care, cosmetic dentistry, and restorative treatments. From routine cleanings and check-ups to more complex procedures, we are equipped to handle all of your dental needs.

At Globe Dental Clinic, we understand that visiting the dentist can be stressful for some patients. That's why we go out of our way to create a comfortable and welcoming environment. Our team of friendly professionals will take the time to explain every aspect of your treatment and answer any questions you may have.

Our goal is to help our patients achieve and maintain beautiful, healthy smiles for life. We invite you to schedule a visit to our clinic and experience the difference that personalized, compassionate care can make in your oral health.</p>
           <%-- <div class="icon-box">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="">Lorem Ipsum</a></h4>
              <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <h4 class="title"><a href="">Nemo Enim</a></h4>
              <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-atom"></i></div>
              <h4 class="title"><a href="">Dine Pad</a></h4>
              <p class="description">Explicabo est voluptatum asperiores consequatur magnam. Et veritatis odit. Sunt aut deserunt minus aut eligendi omnis</p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End About Section -->
    <br /><br />--%></div></div></div>
    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq section-bg" style="padding-top:40px;">
      <div class="container">

        <div class="section-title">
          <h2>Frequently Asked Questions</h2>
<%--          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>--%>
        </div>

        <div class="faq-list">
          <ul>
            <li data-aos="fade-up">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-1">What services does your dental clinic offer? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-1" class="collapse show" data-bs-parent=".faq-list">
                <p>
                    COSMETIC DENTISTRY ,
                    ENDODONTICS ,
                    DENTAL IMPLANTS ,
                    SURGICAL TREATMENTS ,
                    PROSTHODONTICS ,
                    PAEDIATRIC DENTISTRY and
                    ORTHODONTICS.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="100">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-2" class="collapsed">What are your office hours? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-2" class="collapse" data-bs-parent=".faq-list">
                  <p>
                      Our office is open Sunday to Friday from 9am to 5pm, and on Saturday from 8am to 3pm.

                  </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="200">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-3" class="collapsed">How do I book an appointment? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                <div id="faq-list-3" class="collapse" data-bs-parent=".faq-list">
                    <p>
                        You can book an appointment by calling us, visiting our website and booking online, or emailing us with your availability.               
                    </p>
                </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="300">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-4" class="collapsed">Do you accept insurance?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-4" class="collapse" data-bs-parent=".faq-list">
                <p>
                  Yes, we accept most major insurance plans. Please contact us to confirm if we accept your specific plan.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="400">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-5" class="collapsed">What is your cancellation policy?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-5" class="collapse" data-bs-parent=".faq-list">
                <p>
                  We request a 24-hour notice for cancellations.
                </p>
              </div>
            </li>

          </ul>
        </div>

      </div>
    </section><!-- End Frequently Asked Questions Section -->
    <br /><br />
</asp:Content>

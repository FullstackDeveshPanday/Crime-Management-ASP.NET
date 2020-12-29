<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Crime_Management.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- ***** Hero Area Start ***** -->
    <div class="fancy-hero-area bg-img bg-overlay animated-img" style="background-image: url(img/bg-img/bg.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="fancy-hero-content text-center">
                        <!-- Video Overview -->
                        <div class="video-overview">
                            <a href="https://www.youtube.com/watch?v=TN8Ymq-Kllc" class="video--play--btn"><i class="fa fa-play" aria-hidden="true"></i> Watch The Overview</a>
                        </div>
                        <h2>“For our society to be better, we must revive our conscience and do Godly things.”</h2>
                        <h2>AIMING TO A CRIME FREE SOCIETY</h2>
                        <a href="#" class="btn fancy-btn fancy-active">About Us</a>
                        <a href="#" class="btn fancy-btn">Get a quote</a>
                     
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Hero Area End ***** -->

    <!-- ***** Top Feature Area Start ***** -->
    <div class="fancy-top-features-area bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="fancy-top-features-content">
                        <div class="row no-gutters">
                            <div class="col-12 col-md-4">
                                <div class="single-top-feature">
                                    <h5><i class="fa fa-desktop" aria-hidden="true"></i>Cyber Crime </h5>
                                    <p>Cybercrime, or computer-oriented crime, is a crime that involves a computer and a network. The computer may have been used in the commission of a crime. </p>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="single-top-feature">
                                    <h5><i class="fa fa-universal-access" aria-hidden="true"></i> Street Crime</h5>
                                    <p>Robbery, often called "mugging", and thefts from victims in the street where their property is snatched and the victim called street crime.</p>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="single-top-feature">
                                    <h5><i class="fa fa-circle" aria-hidden="true"></i>Drug crimes</h5>
                                    <p>A drug-related crime is a crime to possess, manufacture, or distribute drugs classified as having a potential for abuse Like Brown Suger. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Top Feature Area End ***** -->

    <!-- ***** About Us Area Start ***** -->
    <section class="fancy-about-us-area bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="about-us-text">
                        <h2>Stop Crime </h2>
                        <p>The crime record management system project is a web based application that provides facility for reporting online crimes. The proposed system specifically looks into the subject of Crime Records Management.</p>
                        <p>User can register their complaints online. The system at any point of time can provide the details of existing charge sheets and their statuses. People can check missing persons details online using this system. The system at any point of time can provide the details of the police station and the employees. This system is also show most wanted person details online on the police website..</p>
                    
                        <a href="#" class="btn fancy-btn fancy-dark">Read More</a>
                    </div>
                </div>

                <div class="col-12 col-lg-6 col-xl-5 ml-xl-auto">
                    <div class="about-us-thumb wow fadeInUp" data-wow-delay="0.5s">
                        <img src="img/bg-img/stop.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** About Us Area End ***** -->

    <!-- ***** Skills Area Start ***** -->
    <section class="fancy-skills-area section-padding-200 ">
        <!-- Side Thumb -->
        <div class="skills-side-thumb">
            <img src="img/bg-img/crime.jpg" alt="">
        </div>
        <!-- Skills Content -->
        <div class="container">
            <div class="row ">
                <div class="col-12 col-md-6 col-xl-5 ml-auto">
                    <div class="section-heading mt-5" style="top:30px;">
                        <h2 >Rate Of Crime In India </h2>
                        
                    </div>
                    <div class="skills-content">
                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar wow fadeInUp" data-wow-delay="0.5s">
                            <h6>Cyber Crime </h6>
                            <div id="bar1" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="90"></span>
                            </div>
                        </div>
                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar wow fadeInUp" data-wow-delay="1s">
                            <h6>Street Crime </h6>
                            <div id="bar2" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="65"></span>
                            </div>
                        </div>
                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar wow fadeInUp" data-wow-delay="1.5s">
                            <h6>Drug Crime </h6>
                            <div id="bar3" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="85"></span>
                            </div>
                        </div>
                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar wow fadeInUp" data-wow-delay="2s">
                            <h6>Female Harrasment</h6>
                            <div id="bar4" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="90"></span>
                            </div>
                        </div>
                    </div>
                    <asp:HyperLink ID="HyperLink5" runat="server" class="btn fancy-btn fancy-dark" NavigateUrl="~/Contact.aspx">Click Here</asp:HyperLink>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Skills Area End ***** -->
    <!-- ***** CTA Area Start ***** -->
    <section class="fancy-cta-area bg-img bg-overlay section-padding-100" style="background-image: url(img/bg-img/hero-3.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cta-content text-center">
                        <h2>Ready To Crime Free Society?</h2>
                        <p>There are many ways to contact us. You may drop us a line, give us a call or send an email, choose what suits you the most.</p>
                        <a href="#" class="btn fancy-btn">Conatact With Us</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** CTA Area End ***** -->

    <!-- ***** Blog Area Start ***** -->
    <section class="fancy-blog-area section-padding-100-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <h2>Blog</h2>
                        <p>We Are A Creative Digital Agency. Focused on Growing Brands Online</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Blog -->
                <div class="col-12 col-md-4">
                    <div class="single-blog-area wow fadeInUp" data-wow-delay="0.5s">
                        <img src="img/blog-img/blog-1.jpg" alt="">
                        <div class="blog-content">
                            <h5><a href="static-page.html">We Create Experiences</a></h5>
                            <p>The Fancy that recognize the talent and effort of the best web designers, developers and agencies in the world.</p>
                            <a href="static-page.html">Learn More</a>
                        </div>
                    </div>
                </div>
                <!-- Single Blog -->
                <div class="col-12 col-md-4">
                    <div class="single-blog-area wow fadeInUp" data-wow-delay="1s">
                        <img src="img/blog-img/blog-2.jpg" alt="">
                        <div class="blog-content">
                            <h5><a href="static-page.html">Simple, Fast And Fun</a></h5>
                            <p>The Fancy that recognize the talent and effort of the best web designers, developers and agencies in the world.</p>
                            <a href="static-page.html">Learn More</a>
                        </div>
                    </div>
                </div>
                <!-- Single Blog -->
                <div class="col-12 col-md-4">
                    <div class="single-blog-area wow fadeInUp" data-wow-delay="1.5s">
                        <img src="img/blog-img/blog-3.jpg" alt="">
                        <div class="blog-content">
                            <h5><a href="static-page.html">Device Friendly</a></h5>
                            <p>The Fancy that recognize the talent and effort of the best web designers, developers and agencies in the world.</p>
                            <a href="static-page.html">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Blog Area End ***** -->


      <!-- ***** User Login  ***** -->                                 
                <div class="modal fade" id="exampleModal" >
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                          <asp:Label ID="Label1" runat="server"></asp:Label>
                        <h5 class="modal-title" id="exampleModalLabel">Applicant Login :-</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                                <div class="modal-body">                       
                                      <div class="form-group">
                                           <asp:Label ID="Label5" runat="server" Text="Label">Email:</asp:Label>                  
                                          <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                                          <asp:Label ID="Label6" runat="server" Text="Label">Password:</asp:Label>                       
                                          <asp:TextBox ID="TextBox6" class="form-control" type="password" runat="server"></asp:TextBox>
                                      </div>                   
                                    </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <asp:Button ID="Button2" class="btn btn-info bt" OnClick ="Login" runat="server" Text="Login" />
                                  </div>
                           
                  </div>
                </div>

                 <!-- ***** User Login  End ***** -->
</asp:Content>

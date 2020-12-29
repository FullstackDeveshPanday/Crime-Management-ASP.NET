<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="Crime_Management.Applicant.welcome" %>

<html lang="en">
  
<!-- Mirrored from www.bootstrapdash.com/demo/purple-admin-free/pages/forms/basic_elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 29 Nov 2020 07:37:04 GMT -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Case</title>
    <!-- plugiurple Adminns:css -->
    <link rel="stylesheet" href="./assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="./assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="./assets/css/style.css">
    <!-- End layout styles -->
    
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="">
            
          <a class="navbar-brand brand-logo-mini">
            <img src="https://www.bootstrapdash.com/demo/purple-admin-free/assets/images/logo-mini.svg" alt="logo" />
            <h3>Applicant</h3>
          </a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          
          <ul class="navbar-nav navbar-nav-right">
          <% if (Session["email"] != null && Session["name"] != null)
            {
                 %>
                    <li class="nav-item nav-profile dropdown">
                          <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                            <div class="nav-profile-img">
                              <img src="./assets/images/faces/face1.jpg" alt="image">
                              <span class="availability-status online"></span>
                            </div>
                            <div class="nav-profile-text">
                              <p class="mb-1 text-black"><% Response.Write(Session["name"]); %></p>
                              <p><% Response.Write(Session["email"]); %></p>
                            </div>
                          </a>
                          <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                            <a class="dropdown-item" href="#">
                               </a>
                              <asp:HyperLink ID="HyperLink1" class="btn btn-primary btn-block" NavigateUrl="~/Index.aspx" runat="server">Signout</asp:HyperLink>
                          </div>

                        </li>
                 <%
            }else{
            }
           %>
            
            
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="./assets/images/faces/face1.jpg" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="availability-status online"></span>
                  <span class="font-weight-bold mb-2"><% Response.Write(Session["name"]); %></span>
                  <span class="text-secondary text-small">Applicant</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              
                <span class="menu-title">File A Case</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            
            <li class="nav-item">
             
                <span class="menu-title">Update Profile </span>
                <i class="mdi mdi-contacts menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              
                <span class="menu-title">Track Your Application</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
            
            
            
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"> Fill Your Case In Details </h3>
             
            </div>
            <div class="row justify-content-center">
              <div class="col-md-8 grid-margin stretch-card">

                <div class="card">
                <asp:Label ID="Label2" runat="server" class="text-center text-bold text-success text-right mt-4"></asp:Label>
                  <div class="card-body">
                      
                    <form class="forms-sample" runat="server">
                      <div class="form-group">
                        <label for="exampleInputUsername1">Applicant Name</label>
                          <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Username"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Contact No</label>
                       <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Contact No"></asp:TextBox>
                      </div>
                      <div class="form-group">
                      <asp:DropDownList ID="DropDownList2" class="form-control mt-4"  runat="server">
                                <asp:ListItem Value="">Select Case Type</asp:ListItem>  
                                    <asp:ListItem>Murder</asp:ListItem>  
                                    <asp:ListItem>Child Labour</asp:ListItem>  
                                    <asp:ListItem>Kidnap</asp:ListItem>  
                       </asp:DropDownList>
                       </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Applicant Address</label>
                        <asp:TextBox ID="TextBox3" class="form-control" runat="server" rows="5" cols="35"  TextMode="multiline" placeholder="Address"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputConfirmPassword1">Write Your Case In Brief </label>
                        <asp:TextBox ID="TextBox4" class="form-control" rows="7" cols="35" TextMode="multiline" runat="server" placeholder="Fill Your case in details"></asp:TextBox>
                      </div>
                      <div class="form-check form-check-flat form-check-primary">
                        <label class="form-check-label">
                      </div>
                    <asp:Button ID="Button1" runat="server" class="btn btn-gradient-info mr-2" OnClick="Applicant" Text="Submit" />
                      <button class="btn btn-light">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
             
              <!--  -->
              
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid clearfix">
              
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="./assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="./assets/js/off-canvas.js"></script>
    <script src="./assets/js/hoverable-collapse.js"></script>
    <script src="./assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="./assets/js/file-upload.js"></script>
    <!-- End custom js for this page -->
  </body>

<!-- Mirrored from www.bootstrapdash.com/demo/purple-admin-free/pages/forms/basic_elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 29 Nov 2020 07:37:09 GMT -->
</html>

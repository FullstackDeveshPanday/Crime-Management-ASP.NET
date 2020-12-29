<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Crime_Management.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ***** Contact Area Start ***** -->
    <div class="fancy-contact-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-8">
                <div class="card mx-auto" style="max-width:520px; margin-top:40px;">
          <article class="card-body">
            <header class="mb-4"><h4 class="card-title">Register Yourself</h4></header>
                        <div class="form-group">
               
                              <asp:Label ID="Label2" runat="server" Text="Label">Name:</asp:Label>                   
                              
                                
                              <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>

                              
                              <asp:Label ID="Label4" runat="server" Text="Label">Email:</asp:Label>                  
                              <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>


                              <asp:Label ID="Label3" runat="server" Text="Label">Password:</asp:Label>
                                                      
                              <asp:TextBox ID="TextBox4" class="form-control " Type="password" runat="server"></asp:TextBox>

                              <asp:DropDownList ID="DropDownList1" class="form-control mt-4" runat="server">
                                <asp:ListItem Value="">Select User Type</asp:ListItem>  
                                    <asp:ListItem Value="Applicant">Applicant</asp:ListItem>  
                                    <asp:ListItem Value="Police">Police</asp:ListItem>  
                              </asp:DropDownList>

                              <asp:DropDownList ID="DropDownList2" class="form-control mt-4"  runat="server">
                                <asp:ListItem Value="">Select Case Type</asp:ListItem>  
                                    <asp:ListItem>Murder</asp:ListItem>  
                                    <asp:ListItem>Child Labour</asp:ListItem>  
                                    <asp:ListItem>Kidnap</asp:ListItem>  
                                     <asp:ListItem>Cyber Crime </asp:ListItem>  
                              </asp:DropDownList>
                              <asp:Label ID="Label1" runat="server" Text="Label">Address</asp:Label>
                              <asp:TextBox ID="TextBox1" class="form-control" TextMode="multiline" Columns="30" Rows="3" runat="server"></asp:TextBox>
                          </div>
                       
                     
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        
                          <asp:Button ID="Button1" class="btn btn-info bt" OnClientClick="Button_Click" runat="server" Text="Register" />
                    </div>
                    </article>
                          
                </div>
            </div>
             
           
                 </div>
      
        </div> 
</asp:Content>

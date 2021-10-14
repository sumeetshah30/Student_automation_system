<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="staffprofile.aspx.cs" Inherits="Webapplication2.staffprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
       <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="150" src="images/generaluser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>                           
                        </center>
                     </div>
                     
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  
                   <div class="row">
                     <div class="col-md-4">
                        <label>User Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  
                     <div class="col-md-4">
                        <label>Old_Password</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Old_Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                    <div class="col-md-4">
                        <label>New_Password</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="New_Password"></asp:TextBox>
                        </div>
                     </div>
                  </div><br />

                 <div class=" row">
                    
                     <asp:Button class=" d-grid gap-2 col-6 btn btn-dark mx-auto" ID="Button1" runat="server" Text="Update"  />
                 </div>
               
         
         <div class="col-md-6 mx-auto">

         </div>

         </div>
      
           <div class="col-md-7">
            
                  <div class="row">
                      <h5>|</h5>
                       <h5>|</h5>
                       <h5>|</h5>
                       <h5>|</h5>
                     <div class="d-grid  col-6 ">
                         <asp:Button ID="Button5" class="btn btn-secondary" runat="server" Text="Student Personal Info" OnClick="Button5_Click" />
                         <h5>.</h5>
                          <asp:Button  class="btn btn-secondary" ID="Button3" runat="server" Text="Student Accademic Info" OnClick="Button3_Click" />
                         <h5>.</h5>
                        <asp:Button  class="btn btn-secondary" ID="Button4" runat="server" Text="Manage Class" OnClick="Button4_Click" />
                         
                    </div>
                       <h5>|</h5>
                       <h5>|</h5>
                       <h5>|</h5>
                       <h5>|</h5>
                  </div>
                 

                  

                  

              
         
           </div>

      </div>
      </div>       <br /><br />     
   </div>
  
</asp:Content>
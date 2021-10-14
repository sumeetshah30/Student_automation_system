<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Studentsignup.aspx.cs" Inherits="Webapplication2.Studentsignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
       <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
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
                           <h4>Student SignUp</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                     
                  <div class="col-md-12">
                     <div class="row">
                     <div class="col-md-12">
                        <label>Student full-NAme</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Last_name  First_Name  Middle_Name"></asp:TextBox>
                        </div>
                     </div> 
                     </div>
                     <div class="row">
                     <div class="col-md-6">
                        <label>Roll No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Roll No"></asp:TextBox>
                        </div>
                    </div> 
                         <div class="col-md-6">
                        <label>Date-Of-Birth</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Student ID" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     
                     </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Class </label>
                        <div class="form-group">
                           
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="class" DataValueField="class">
                            </asp:DropDownList>
                           
                        </div>
                     </div>
                  
                     <div class="col-md-6">
                        <label>Division</label>
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="division" DataValueField="division">
                            </asp:DropDownList>
                        </div>
                     </div>
                  </div>
                  </div>
                   </div>


                    <div class="row">                   
                     <div class="col-md-4">
                        <label>Contact No.</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact No." TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  
                  
                     <div class="col-md-4">
                        <label>Parent's Contact No.</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Parent's Contact No." TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                     
                        <div class="col-md-4">
                        <label>Email-ID</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="....@xyz.com" AutoCompleteType="Email"></asp:TextBox>
                        </div>
                     </div>                     
                  </div>


                  <div class="row">                  
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Full address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                <div class="row">                  
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownList1" Class="form-control" runat="server">
                                 <asp:ListItem>Select State</asp:ListItem>
                                <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
                                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                <asp:ListItem>Assam</asp:ListItem>
                                <asp:ListItem>Bihar</asp:ListItem>
                                <asp:ListItem>Chandigarh</asp:ListItem>
                                <asp:ListItem>Chattisgarh</asp:ListItem>
                                <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
                                <asp:ListItem>Daman and Diu</asp:ListItem>
                                <asp:ListItem>Delhi</asp:ListItem>
                                <asp:ListItem>Goa</asp:ListItem>
                                <asp:ListItem>Gujarat</asp:ListItem>
                                <asp:ListItem>Haryana</asp:ListItem>
                                <asp:ListItem>Himachal Pradesh</asp:ListItem>
                                <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                                <asp:ListItem>Jharkhand</asp:ListItem>
                                <asp:ListItem>Karnataka</asp:ListItem>
                                <asp:ListItem>Kerala</asp:ListItem>
                                <asp:ListItem>Lakshadweep</asp:ListItem>
                                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                <asp:ListItem>Maharashtra</asp:ListItem>
                                <asp:ListItem>Manipur</asp:ListItem>
                                <asp:ListItem>Meghalaya</asp:ListItem>
                                <asp:ListItem>Mizoram</asp:ListItem>
                                <asp:ListItem>Nagaland</asp:ListItem>
                                <asp:ListItem>Orissa</asp:ListItem>
                                <asp:ListItem>Pondicherry</asp:ListItem>
                                <asp:ListItem>Punjab</asp:ListItem>
                                <asp:ListItem>Rajasthan</asp:ListItem>
                                <asp:ListItem>Sikkim</asp:ListItem>
                                <asp:ListItem>Tamil Nadu</asp:ListItem>
                                <asp:ListItem>Tripura</asp:ListItem>
                                <asp:ListItem>Uttarakhand</asp:ListItem>
                                <asp:ListItem>Uttaranchal</asp:ListItem>
                                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                <asp:ListItem>West Bengal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                   </div>
                   <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                       <center>
                      <div class="col-md-2.5">
                       <span class="badge rounded-pill bg-info ">Login Credentials</span>
                       </div> 
                       </center>
                   </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>User Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User Name"></asp:TextBox>
                        </div>
                     </div>
                  
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div><br />

                 <div class=" row">
                    
                     <asp:Button class=" d-grid gap-2 col-6 btn btn-success mx-auto" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                     <br />
                     <br />
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentASDBConnectionString %>" SelectCommand="SELECT DISTINCT [class], [division] FROM [class_tbl]"></asp:SqlDataSource>
                 </div>
               
          </div>
          <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      
   </div>
   </div>
</asp:Content>


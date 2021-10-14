<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="Webapplication2.StudentProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">     
    <div >
       <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
                &nbsp;<div class="card-body">
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
                            <span>Account Status - </span>
                            <asp:Label ID="Label1" runat="server" Text="Active" class="badge rounded-pill bg-info "></asp:Label>
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
                     <div class="col-md-8">
                        <label>Student full-NAme</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Last_name  First_Name  Middle_Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div> 
                     </div>
                     <div class="row">
                     <div class="col-md-6">
                        <label>Roll No</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Roll No" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div> 
                         <div class="col-md-6">
                        <label>Date-Of-Birth</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Student ID" TextMode="Date" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     
                     </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Class </label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Class" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  
                     <div class="col-md-6">
                        <label>Division</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Division" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  </div>
                   </div>


                    <div class="row">                   
                     <div class="col-md-4">
                        <label>Contact No.</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact No." TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  
                  
                     <div class="col-md-4">
                        <label>Parent's Contact No.</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Parent's Contact No." TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                     
                        <div class="col-md-4">
                        <label>Email-ID</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="....@xyz.com" AutoCompleteType="Email" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>                     
                  </div>


                  <div class="row">                  
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Full address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                <div class="row">                  
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Pincode" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                   </div><br />
                   <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                       <center>
                      <div class="col-md-2.5">
                       <span class="badge rounded-pill bg-primary ">Login Credentials</span>
                       </div> 
                       </center>
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
                    
                     <asp:Button class=" d-grid gap-2 col-6 btn btn-success mx-auto" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click"  />
                 </div>
               </div>
            </div>
         
         <div class="col-md-6 mx-auto">

         </div>

         </div>
      
           <div class="col-md-7">
            <div class="card">
               <div class="card-body">
            <div class="row">
                     <div class="col">
                        <center>
                            <img width="150" src="images/digital-data.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Acadmic-Profile</h4>                            
                        </center>
                     </div>
                     
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-5">
                        <label>Student Acadmic</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="Roll_no" ReadOnly="True"></asp:TextBox>
                              <asp:TextBox CssClass="form-control" ID="TextBox17" runat="server" placeholder="class" ReadOnly="True"></asp:TextBox>
                              <asp:TextBox CssClass="form-control" ID="TextBox18" runat="server" placeholder="Div" ReadOnly="True"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-7">
                        <label>Student Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox19" runat="server" placeholder="Student Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div><br>
                
                  <div class="row">   
                     <div class="card col-md-8">
                      <div class="row"> 
                     <div class="col-md-4">
                        <div>
                          <h6>English</h6> 
                        </div>
                     </div>                      
                     <div class="col-md-8">
                     <div class="row">
                     <div class="col-md-3">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox20" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                  </div> <br> 
                   <div class="row">   
                     <div class="card col-md-8">
                      <div class="row"> 
                     <div class="col-md-4">
                        <div>
                          <h6>Maths</h6> 
                        </div>
                     </div>                      
                     <div class="col-md-8">
                     <div class="row">
                     <div class="col-md-3">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox23" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox24" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                  </div><br>  

                 <div class="row">   
                     <div class="card col-md-8">
                      <div class="row"> 
                     <div class="col-md-4">
                        <div>
                          <h6>Physics</h6> 
                        </div>
                     </div>                      
                     <div class="col-md-8">
                     <div class="row">
                     <div class="col-md-3">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox26" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox27" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                  </div>  <br>

                 <div class="row">   
                     <div class="card col-md-8">
                      <div class="row"> 
                     <div class="col-md-4">
                        <div>
                          <h6>Chemistry</h6> 
                        </div>
                     </div>                      
                     <div class="col-md-8">
                     <div class="row">
                     <div class="col-md-3">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox29" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox30" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                  </div> <br> 

                 <div class="row">   
                     <div class="card col-md-8">
                      <div class="row"> 
                     <div class="col-md-4">
                        <div>
                          <h6>Biology</h6> 
                        </div>
                     </div>                      
                     <div class="col-md-8">
                     <div class="row">
                     <div class="col-md-3">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox32" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox33" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                  </div>  <br>

                 <div class="row">   
                     <div class="card col-md-8">
                      <div class="row"> 
                     <div class="col-md-4">
                        <div>
                          <h6>History</h6> 
                        </div>
                     </div>                      
                     <div class="col-md-8">
                     <div class="row">
                     <div class="col-md-3">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox35" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox36" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                  </div> <br> 

                 <div class="row">   
                     <div class="card col-md-8">
                      <div class="row"> 
                     <div class="col-md-4">
                        <div>
                          <h6>Geography</h6> 
                        </div>
                     </div>                      
                     <div class="col-md-8">
                     <div class="row">
                     <div class="col-md-3">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox38" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox39" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    
                  </div> <br> 
                 <div class="row">   
                     <div class="card col-md-8">
                      <div class="row"> 
                     <div class="col-md-4">
                        <div>
                          <h6>Total Marks</h6> 
                        </div>
                     </div>                      
                     <div class="col-md-8">
                     <div class="row">
                     <div class="col-md-3">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox41" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox42" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    <div class="card col-md-4">
                      <div class="col-md-12">
                     <div class="row">
                    <div class="col-md-6">
                          <h7>Avg.<br>Attendance</h7>  
                    </div>
                    <div class="col-md-6">                       
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox43" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div> 
                     </div>
                    </div>
                    </div>
                  </div> <br> 
                  
               </div>
            </div>
           
            <br>
         </div>
                  </div>
                  

                 
               </div>
            </div>
         
         

           <br /><br />     
  
  
</asp:Content>

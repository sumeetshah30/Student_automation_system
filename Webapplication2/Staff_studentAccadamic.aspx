<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Staff_studentAccadamic.aspx.cs" Inherits="Webapplication2.Staff_studentAccadamic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            margin-left: 40px;
            color: #ffffff;
        }
        h6 {
	        cursor: pointer;
	        color: #ffd800;
	        display: block;
	        padding: 10px;
	        margin: 3px;
        }
        h7 {
	        cursor: pointer;
	        color: #ffd800;
	        display: block;
	        padding: 10px;
	        margin: 3px;
        }
         h5 {
	        cursor: pointer;
	        color: #ffffff;
	        display: block;
	        padding: 10px;
	        margin: 3px;
            bold: true;
        }
         h4 {
	        cursor: pointer;
	        color: #ffffff;
	        display: block;
	        padding: 10px;
	        margin: 3px;
            bold: true;
            
        }
        .auto-style2 {
            display: block;
            width: 100%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-6">
            
              
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Student Details</h4>
                        </center>
                     </div>
                  </div><br>
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100" src="images/books1.png" />
                        </center>
                     </div>
                  </div><br>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div><br>
                  <div class="row">
                     <div class="col-md-4">
                        <h5>Student Acadmic</h5>
                        <div class="form-group">
                           <div class="input-group">
                              
                              <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Student Id"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"  style="width: 6px" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <h5>Student Name</h5>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Student Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div><br>
                
                  <div class="row">   
                     
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
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="auto-style2" ID="TextBox3" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    
                   
                  </div> <br> 
                   <div class="row">   
                     
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
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                   
                  </div><br>  

                 <div class="row">   
                     
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
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    
                    
                  </div>  <br>

                 <div class="row">   
                     
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
                           <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    
                    
                  </div> <br> 

                 <div class="row">   
                     
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
                           <asp:TextBox CssClass="form-control" ID="TextBox17" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox18" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                 
                    
                  </div>  <br>

                 <div class="row">   
                     
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
                           <asp:TextBox CssClass="form-control" ID="TextBox20" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                    
                    
                  </div> <br> 

                 <div class="row">   
                    
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
                           <asp:TextBox CssClass="form-control" ID="TextBox23" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox24" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                                        
                  </div> <br> 
                 <div class="row">   
                     
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
                           <asp:TextBox CssClass="form-control" ID="TextBox26" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5"> 
                          <h7>Out Off</h7>  
                     </div>                     
                        <div class="form-group col-md-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox27" runat="server"  TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    </div>
                   
                     
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
                   <div class="row">
                      <div class="col-md-5">
                        
                     </div>
                     <div class="col-md-5">
                        
                            <asp:LinkButton class=" d-grid gap-2 col-6 btn btn-success mx-auto" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click"  />
                          <br />
          <br />
          <br />
                     </div>
                  </div>

             </div>
       
            
        
      <div class="col-md-6">
            
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Student List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="auto-style1">
                         &nbsp;&nbsp; Class:&nbsp;
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="class" DataValueField="class"></asp:DropDownList>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Division&nbsp;&nbsp;
                         <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="division" DataValueField="division"></asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button2" runat="server" ForeColor="#339966" Text="Go" />
&nbsp;<asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="student_id" HeaderText="Student ID" SortExpression="student_id">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="roll_no" HeaderText="Roll NO" SortExpression="roll_no">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="full_name" HeaderText="Student Name" SortExpression="full_name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" BorderStyle="None" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                         </asp:GridView>
                         <br />
                         <br />
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentASDBConnectionString %>" SelectCommand="SELECT [full_name], [roll_no], [student_id] FROM [student_master_table] WHERE (([class] = @class) AND ([division] = @division))">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
                                 <asp:ControlParameter ControlID="DropDownList2" Name="division" PropertyName="SelectedValue" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                         <br />
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentASDBConnectionString %>" SelectCommand="SELECT DISTINCT [class], [division] FROM [student_master_table]"></asp:SqlDataSource>
                     </div>
                  </div>
               </div>
         
      </div>
   </div>
  
</asp:Content>
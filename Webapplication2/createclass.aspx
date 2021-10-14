<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="createclass.aspx.cs" Inherits="Webapplication2.createclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         label {
             
              color: white;
            }
        .auto-style2 {
            display: block;
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
            margin-left: 27;
            background-color: #fff;
        }
        .auto-style3 {
            display: block;
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
    .auto-style4 {
        margin-left: 80px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
     <div class="container-fluid">
      <div class="row">
          <div class="col-md-6">
         
            
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="150" src="images/attendance3.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Manage Class</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                        <label>Enter ClassID</label>
                        <div class="auto-style4">
                           <asp:TextBox CssClass="auto-style3" ID="TextBox3" runat="server" Height="32px" Width="674px" ></asp:TextBox>
                        &nbsp;
                            <br />
                        </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label>Enter Class</label>
                        <div class="auto-style4">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:TextBox CssClass="auto-style3" ID="TextBox1" runat="server" Height="34px" Width="676px" ></asp:TextBox>
                            <br />
                        </div>
                         <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label>Enter Division</label>
                        <div class="auto-style4">
                           <asp:TextBox CssClass="auto-style2" ID="TextBox2" runat="server" Height="36px" Width="680px" ></asp:TextBox><br>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                           <asp:Button class="d-grid gap-2 btn btn-success " ID="Button1" runat="server" Text="Create Class" OnClick="Button1_Click" />
                            </div>
                            <div class="col-md-4">
                            </div>
                             <div class="col-md-4">
                           <asp:Button class="d-grid gap-2 btn btn-danger " ID="Button3" runat="server" Text="Delete Class" OnClick="Button3_Click"/>
                            </div>
                        </div>
                        

                     </div>
                  </div>
               
           
         </div>
          <br />
            <br />
            <br />
            <br />

          
         <div class="col-md-6">
           <br />
           <br />
           <br />

               
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Class List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="class_id" HeaderText="Class_ID" SortExpression="class_id">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="class" HeaderText="Class" SortExpression="class">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="division" HeaderText="Division" SortExpression="division">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentASDBConnectionString %>" SelectCommand="SELECT [class_id], [class], [division] FROM [class_tbl]"></asp:SqlDataSource>
                     </div>
                  </div>
              
            
         </div>
      </div>
   </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studententry.aspx.cs" Inherits="Webapplication2.studententry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Student List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <br />
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <br />
&nbsp;&nbsp;
                         <asp:Label ID="Label1" runat="server" Text="Class:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="class" DataValueField="class">
                         </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label2" runat="server" Text="Division:"></asp:Label>
                         <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="division" DataValueField="division">
                         </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label3" runat="server" Text="pending" Visible="False"></asp:Label>
                         &nbsp;
                         <asp:Button ID="Button3" runat="server" BorderStyle="Solid" CssClass="btn btn-success" Text="Search" />
                         <br />
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="student_id" HeaderText="Student_ID" SortExpression="student_id" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="roll_no" HeaderText="Roll_No" SortExpression="roll_no" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="full_name" HeaderText="Full_Name" SortExpression="full_name" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>

                                <asp:TemplateField HeaderText="Account Active Check">
                                    <ItemTemplate>
                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="G2" Text="Active" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="Black" GroupName="G2" Text="Pending" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>

                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                         </asp:GridView>
                         <br />
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentASDBConnectionString %>" SelectCommand="SELECT [student_id], [roll_no], [full_name], [class], [division], [dob], [contact], [parents_contact], [account_status], [pincode], [city], [state], [full_address], [email_id] FROM [student_master_table] WHERE (([class] = @class) AND ([division] = @division) AND ([account_status] = @account_status))">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
                                 <asp:ControlParameter ControlID="DropDownList2" Name="division" PropertyName="SelectedValue" Type="String" />
                                 <asp:ControlParameter ControlID="Label3" Name="account_status" PropertyName="Text" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                         <br />
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentASDBConnectionString %>" SelectCommand="SELECT DISTINCT [class], [division] FROM [student_master_table]"></asp:SqlDataSource>
                         <br />
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>

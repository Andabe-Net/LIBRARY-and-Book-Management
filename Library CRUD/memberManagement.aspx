<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="memberManagement.aspx.cs" Inherits="Library_CRUD.memberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
     $(document).ready(function () {
         $('.table').prepend($("<thead></thead>").append($(this).find
             ("tr:first"))).dataTable();
     });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

          <div class="container-fluid">
          <div class="row">
         

             
              <div class="col-md-5">
                  <div class="card" style="">
                        <div class="card-body">
                            <center>
                               
                                   <h4 class="card-title">Member Details</h4>
                                <img width="100px" src="imgs/generaluser.png" />
                            </center>

                              <div class="row">
                                  <div class="col">
                                      <center><hr /></center>
                                  </div>

                             </div>

                           

                             <div class="row">
                                 <div class="col-md-3">
    <label>Member ID</label>
    <div class="form-group">
        <div class="input-group">
            
            <asp:TextBox class="form-control"  ID="TextBox4" runat="server" placeholder="Member ID"></asp:TextBox>
              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="Button4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>

        </div>
         
    </div>
</div>

                                  <div class="col-md-4"> 
                                      <div class="form-group">
                                          <label>Full Name</label>
                                                <asp:TextBox class="form-control"  ID="TextBox2" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                         


                                      </div>
                                  </div>

                                                 <div class="col-md-5">
                                            <label>Account Status</label>
                                                <div class="form-group">
                                                    <div class="input-group">
            
                                                         <asp:TextBox class="form-control mr-1"  ID="TextBox1" runat="server" placeholder="Account status" ReadOnly="True"></asp:TextBox>
                                                        <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="Button1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                                          <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                                          <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>



                                                    </div>
         
                                                   </div>
                                            </div>

                              
                          </div>


                      <div class="row">

                             
                          <div class="col-md-3">
                              <div class="form-group">
                                  <label>DOB</label>
                                      <asp:TextBox class="form-control"  ID="TextBox6" runat="server" ReadOnly="True" TextMode="Date"></asp:TextBox>
                              </div>
                          </div>

                         <div class="col-md-4">
                              <div class="form-group">
                                  <label>Contact No</label>
                                      <asp:TextBox class="form-control"  ID="TextBox7" runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                               </div>
                         </div>

                         <div class="col-md-5">
                              <div class="form-group">
                                  <label>Email ID</label>
                                      <asp:TextBox class="form-control"  ID="TextBox3" runat="server" placeholder="Email ID" ReadOnly="True" TextMode="Email"></asp:TextBox>
                               </div>
                         </div>


                      </div>

                               <div class="row">

           <div class="col-md-4"> 
               <div class="form-group">
                   <label>State</label>
                   <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                       

                  
               </div>
           </div>

       <div class="col-md-4">
           <div class="form-group">
               <label>City</label>
                   <asp:TextBox class="form-control"  ID="TextBox5" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
           </div>
       </div>

      <div class="col-md-4">
           <div class="form-group">
               <label>Pin Code</label>
                   <asp:TextBox class="form-control"  ID="TextBox10" runat="server" placeholder="Pin Code" TextMode="Number" ReadOnly="True"></asp:TextBox>
            </div>
      </div>

   </div>

                             <div class="row">
        <div class="col"> 
            <div class="form-group">
                <label>Full Postal address</label>
                    <asp:TextBox class="form-control"  ID="TextBox12" runat="server" placeholder="Product Description" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                </div>
       </div>   
</div>


                              

                        

    
                      

                            








                            <div class="row">
                                <div class="col-md-8 mx-auto">
                                      <div class="form-group">
                                          <asp:Button class="btn btn-danger btn-block" ID="Button1" runat="server" Text="Delete User Permanently" OnClick="Button1_Click1" />

                                      </div>
                                </div>
                                   
                            </div>

                          
                 </div>
           </div> 
                  <a href="homepage.aspx"><< Back Home</a><br><br />
                
          </div>


                      <div class="col-md-7">
            <div class="card" style="">
                  <div class="card-body">
                      <center>
                          
                             <h4 class="card-title">Member List</h4>
                          
                      </center>

                        <div class="row">
                            <div class="col">
                                <center><hr /></center>
                                <asp:GridView class="table table-responsive table-striped table-bordered" ID="MemberTbl" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No." SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>



                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryDbConnectionString %>" SelectCommand="SELECT [full_name], [member_id], [account_status], [contact_no], [email], [state], [city] FROM [member_master_tbl]"></asp:SqlDataSource>



                            </div>

                       </div>

                      
                    
           </div>
 
   
           </div>
</div>

      </div>
              </div>


</asp:Content>

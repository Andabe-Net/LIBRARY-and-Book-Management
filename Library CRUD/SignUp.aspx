<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Library_CRUD.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
           

               
                <div class="col-md-8 mx-auto">
                    <div class="card" style="">
                          <div class="card-body">
                              <center>
                                  <img src="imgs/generaluser.png" width="100px"/>
                                     <h4 class="card-title">User Registration</h4>
                              </center>

                                <div class="row">
                                    <div class="col">
                                        <center><hr /></center>
                                    </div>

                               </div>

                              <div class="row">

                                  <div class="col-md-6"> 
                                      <div class="form-group">
                                          <label>Full name</label>
                                        <asp:TextBox class="form-control"  ID="TextBox1" runat="server" placeholder="Password"></asp:TextBox>

                                        </div>
                                  </div>

                                  <div class="col-md-6">
                                       <div class="form-group">
                                           <label>Date of Birth</label>
                                         <asp:TextBox class="form-control"  ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                                        </div>
                                  </div>

                             </div>

                               <div class="row">

                                    <div class="col-md-6"> 
                                        <div class="form-group">
                                            <label>Contact</label>
                                                  <asp:TextBox class="form-control"  ID="TextBox2" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>

                                        </div>
                                    </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                         <label>Email</label>
                                            <asp:TextBox class="form-control"  ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        <div class="row">

                                <div class="col-md-4"> 
                                    <div class="form-group">
                                        <label>State</label>
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem text="select" value="select"/>

                                        </asp:DropDownList>
                                    </div>
                                </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                        <asp:TextBox class="form-control"  ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                           <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pin Code</label>
                                        <asp:TextBox class="form-control"  ID="TextBox7" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                 </div>
                           </div>

                        </div>


                                 <div class="row">
                                        <div class="col"> 
                                            <div class="form-group">
                                                <label>Full address</label>
                                                    <asp:TextBox class="form-control"  ID="TextBox5" runat="server" placeholder="full address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                                </div>
                                       </div>   
                                </div>

                            <div class="row">
                                
                                        <div class="col">  
                                            <center>
                                           <span class="badge badge-pill badge-info">Login Credentials</span>
                                            </center>
                                        </div>
                               
                            </div>

      
                        

                               <div class="row">
                                    <div class="col-md-6"> 
                                         <div class="form-group">
                                                <label>User ID</label>
                                                    <asp:TextBox class="form-control"  ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                                           </div>
                                     </div>

                                    <div class="col-md-6">
                                         <div class="form-group">
                                            <label>Password</label>
                                                <asp:TextBox class="form-control"  ID="TextBox9" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>








                              <div class="row">
                                  <div class="col">
                                        <div class="form-group">
                                            <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />

                                        </div>
                                  </div>
                              </div>

                            
                   </div>
             </div> 
                    <a href="homepage.aspx"><< Back Home</a><br><br />
                  
            </div>
        </div>
            </div>
    </section>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Library_CRUD.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
    <div class="container">
        <div class="row">
       

           
            <div class="col-md-6 mx-auto">
                <div class="card" style="">
                      <div class="card-body">
                          <center>
                              <img src="imgs/generaluser.png" width="150px"/>
                                 <h3 class="card-title">User Login</h3>
                          </center>

                            <div class="row">
                                <div class="col">
                                    <center><hr /></center>
                                </div>

                           </div>
                         <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox class="form-control"  ID="TextBox1" runat="server" placeholder="User ID"></asp:TextBox>

                                </div>

                                 <div class="form-group">

                                     <asp:TextBox class="form-control"  ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                                 </div>

                                  <div class="form-group">

                                      <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

                                </div>
                                    <div class="form-group">

                                        <a href="SignUp.aspx" style="text-decoration:none;"> <input class="btn btn-info btn-block" id="Button2" type="button" value="Sign Up" />
                                            </a>

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

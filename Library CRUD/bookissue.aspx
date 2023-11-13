<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookissue.aspx.cs" Inherits="Library_CRUD.bookissue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">



            <div class="col-md-5">
                <div class="card" style="">
                    <div class="card-body">
                        <center>

                            <h4 class="card-title">Book Issuing</h4>
                            <img width="100px" src="imgs/books.png" />
                        </center>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>

                        </div>



                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Member ID</label>
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="ID" TextMode="Number"></asp:TextBox>



                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-secondary" ID="Button2" runat="server" Text="Go" />

                                    </div>

                                </div>
                            </div>
                        </div>


                        <div class="row">


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Member Name</label>
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Book Name</label>
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        </div>









                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Start Date</label>
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="start Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>End Date</label>
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>








                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Issue" />

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block" ID="Button3" runat="server" Text="Return" />

                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <a href="homepage.aspx"><< Back Home</a><br>
                <br />

            </div>


            <div class="col-md-7">
                <div class="card" style="">
                    <div class="card-body">
                        <center>

                            <h4 class="card-title">Issued Book List</h4>

                        </center>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                                <asp:GridView ID="GridView7" runat="server"></asp:GridView>



                            </div>

                        </div>



                    </div>


                </div>
            </div>

        </div>
    </div>
</asp:Content>

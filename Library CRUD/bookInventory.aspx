<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookInventory.aspx.cs" Inherits="Library_CRUD.bookInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container-fluid">
            <div class="row">



                <div class="col-md-5">
                    <div class="card" style="">
                        <div class="card-body">
                            <center>

                                <h4 class="card-title">Book Details</h4>
                                <img src="imgs/books2.png" width="100px"/>
                                

                            </center>

                            <div class="row">
                                <div class="col">
                                    <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                                </div>
                                <br />
                                <br />

                            </div>

                            <div class="row">

                                <div class="col-md-3">

                                    <div class="form-group text">
                                        <label>Book ID</label>
                                        <div class="input-group">


                                            <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Book ID"></asp:TextBox>
                                            <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" />

                                        </div>

                                    </div>
                                </div>


                                <div class="col-md-9">
                                    <div class="form-group">
                                        <label>Book Name</label>
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Book Name"></asp:TextBox>



                                    </div>
                                </div>

                            </div>

                            <div class="row">

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Language</label>
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                            <asp:ListItem Text="select" Value="select" />
                                            <asp:ListItem Text="English" Value="English" />
                                            <asp:ListItem Text="French" Value="French" />
                                            <asp:ListItem Text="Spanish" Value="Spanish" />
                                            <asp:ListItem Text="Hindi" Value="Hindi" />
                                        </asp:DropDownList>
                                        <br />
                                        <label>Publisher Name</label>
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                            <asp:ListItem Text="select" Value="select" />
                                        </asp:DropDownList>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Author Name</label>
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList4" runat="server">
                                            <asp:ListItem Text="select" Value="select" />
                                        </asp:DropDownList>
                                        <br />
                                        <label>Publisher Date</label>
                                        <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="date" TextMode="Date"></asp:TextBox>


                                    </div>
                                </div>


                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Genre</label>
                                        <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" Rows="5" SelectionMode="Multiple">
                                            <asp:ListItem Text="select" Value="select" />
                                            <asp:ListItem Text="select" Value="select" />
                                            <asp:ListItem Text="select" Value="select" />
                                            <asp:ListItem Text="select" Value="select" />
                                            <asp:ListItem Text="select" Value="select" />
                                            <asp:ListItem Text="select" Value="select" />
                                        </asp:ListBox>
                                    </div>
                                </div>
                            </div>


                            <div class="row">

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Edition</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="edition" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Book Cost(Per Unit)</label>
                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Cost" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Pages</label>
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Page No" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="row">

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Actual Stock</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="actual stock" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Current Stock</label>
                                        <asp:TextBox class="form-control" ID="TextBox12" runat="server" placeholder="current stock" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Issued Books</label>
                                        <asp:TextBox class="form-control" ID="TextBox13" runat="server" placeholder="issued books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>

                            </div>



                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label>Book Description</label>
                                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="book description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block" ID="Button3" runat="server" Text="Add" />

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Button class="btn btn-warning btn-block" ID="Button4" runat="server" Text="Update" />

                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Button class="btn btn-danger btn-block" ID="Button5" runat="server" Text="Delete" />

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

                                <h4 class="card-title">Book Inventory List</h4>

                            </center>

                            <asp:GridView ID="GridView4" runat="server"></asp:GridView>



                        </div>


                    </div>
                </div>


            </div>

        </div>
    </section>
</asp:Content>

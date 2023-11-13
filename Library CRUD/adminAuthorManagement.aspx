<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAuthorManagement.aspx.cs" Inherits="Library_CRUD.adminAuthorManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find
                ("tr:first"))).dataTable();
        });
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">



            <div class="col-md-5">
                <div class="card" style="">
                    <div class="card-body">
                        <center>

                            <h4 class="card-title">Author Details</h4>
                            <img width="100px" src="imgs/writer.png" />
                        </center>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-secondary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>


                                </div>

                            </div>


                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Author Name</label>
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>

                        </div>









                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block  pl-0 pr-0 w-100 text-center" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-warning btn-block  pl-0 pr-0 w-100 text-center" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />

                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-block  pl-0 pr-0 w-100 text-center" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />

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

                            <h4 class="card-title">Author List</h4>

                        </center>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>

                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryDbConnectionString %>" ProviderName="<%$ ConnectionStrings:ELibraryDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>

                            <div class="col">


                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView>



                            </div>

                        </div>



                    </div>


                </div>
            </div>


        </div>

    </div>

</asp:Content>

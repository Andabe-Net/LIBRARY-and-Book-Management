<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="publisherManagement.aspx.cs" Inherits="Library_CRUD.publisherManagement" %>

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

                            <h4 class="card-title">Publisher Details</h4>
                            <img width="100px" src="imgs/publisher.png" />
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
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox class="form-control" ID="TextBoxId" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-secondary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>


                                </div>

                            </div>


                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Publisher Name</label>
                                    <asp:TextBox class="form-control" ID="TextBoxName" runat="server" placeholder="Publisher Name"></asp:TextBox>
                                </div>
                            </div>

                        </div>









                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="pl-0 pr-0 w-100 text-center btn btn-success btn-block" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />

                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button class="pl-0 pr-0 w-100 text-center btn btn-warning btn-block " ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />

                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-block pl-0 pr-0 w-100 text-center" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />

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

                            <h4 class="card-title">Publisher List</h4>

                        </center>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">

                                <asp:GridView class="table table-striped table-bordered" ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                    </Columns>
                                </asp:GridView>



                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryDbConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>



                            </div>

                        </div>



                    </div>


                </div>
            </div>


        </div>

    </div>

</asp:Content>

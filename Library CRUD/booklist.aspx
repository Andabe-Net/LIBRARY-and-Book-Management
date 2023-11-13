<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="booklist.aspx.cs" Inherits="Library_CRUD.booklist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluid">
            <div class="row">





                <div class="col mx-auto">
                    <div class="card" style="">
                        <div class="card-body">
                            <center>

                                <h4 class="card-title">Book List</h4>

                            </center>

                            <asp:GridView ID="GridView6" runat="server"></asp:GridView>



                        </div>


                    </div>
                </div>


            </div>

        </div>
    </section>
</asp:Content>

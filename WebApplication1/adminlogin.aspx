<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication1.adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col img-cent">
                                <img width="150px" src="Images/adminuser.png" class="centre" />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col img-cent">
                                <h3>Admin Login</h3>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">


                                <label>Admin ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" class="form-control"
                                        runat="server" placeholder="Admin ID"></asp:TextBox>
                                    &nbsp;
                                </div>


                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" class="form-control"
                                        runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                &nbsp;


                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-lg col-12" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>



                            </div>
                        </div>


                    </div>
                </div>
                <a href="homepage.aspx"><< Back To Home</a>
                <br>
                <br>
            </div>
        </div>
    </div>


</asp:Content>

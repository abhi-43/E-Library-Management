<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="WebApplication1.userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">

                            <div class="col img-cent">
                                <img width="100px" src="Images/generaluser.png" />
                            </div>

                        </div>

                        <div class="row">
                            <div class="col img-cent">
                                <h3>Your Profile</h3>
                                <span>Account Status - </span>
                                <asp:Label class="badge badge-pill bg-info" ID="Label3" runat="server" Text="Active"></asp:Label>
                            </div>
                        </div>

                        

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" class="form-control"
                                        runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" class="form-control"
                                        runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <br />
                        <div class="row">

                            <div class="col-md-6">
                                <label>Email-ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" class="form-control"
                                        runat="server" placeholder="Email-ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Contact No.</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" class="form-control"
                                        runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <br />
                        <div class="row">

                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>
                                </div>
                            </div>


                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox8" class="form-control"
                                        runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" class="form-control"
                                        runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <br />
                        <div class="row">

                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" class="form-control"
                                        runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <br />
                        <div class="row">
                            <div class="col img-cent">
                                <span class="badge badge-pill bg-info">Login Credentials</span>
                            </div>
                        </div>
                        <br />
                        <div class="row">

                            <div class="col-md-4">
                                <label>User-ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" class="form-control"
                                        runat="server" placeholder="User-ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox7" class="form-control"
                                        runat="server" placeholder="Password" ReadOnly="True" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox10" class="form-control"
                                        runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <br />
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-lg col-12" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <a href="homepage.aspx"><< Back To Home</a>
                <br>
                <br>
            </div>


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="img-cent">
                                <img width="100px" src="Images/books1.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col img-cent">
                                <h3>Your Issued Books</h3>
                                <asp:Label class="badge badge-pill bg-info" ID="Label2" runat="server" Text="Your Books Info"></asp:Label>
                            </div>
                        </div>

                        

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

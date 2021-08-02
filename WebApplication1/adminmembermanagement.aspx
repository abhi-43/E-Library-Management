<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="WebApplication1.adminmembermanagement" %>
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
                            <div class="col  img-cent" >
                                <h4>Member Details</h4>                             
                            </div>
                        </div>

                         <div class="row">
                            <div class="col img-cent" >
                                <img width="100px" src="Images/generaluser.png"/>
                            </div>
                        </div>
                        

                         <div class="row">
                            <div class="col" >
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-3" >
                               <label>Member ID</label>
                                <div class="form-group"> 
                                    <div class="input-group"> 
                                    <asp:TextBox ID="TextBox3" class="form-control" 
                                     runat="server" placeholder="ID"></asp:TextBox>

                                    <asp:LinkButton class="btn btn-primary" ID="LinkButton4" 
                                        runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                     </div>
                                </div>
                             </div>


                            <div class="col-md-4" >
                               <label>Full Name</label>
                                <div class="form-group">    
                                    <asp:TextBox ID="TextBox4" class="form-control" 
                                     runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            
                            <div class="col-md-5" >
                               <label>Account Status</label>
                                <div class="form-group">    

                                    <div class="input-group"> 
                                    <asp:TextBox ID="TextBox7" class="form-control" 
                                     runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                        &nbsp;
                                        <asp:LinkButton ID="LinkButton1" class="btn btn-success"
                                         runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        &nbsp;
                                        <asp:LinkButton ID="LinkButton2" class="btn btn-warning"
                                         runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        &nbsp;
                                        <asp:LinkButton ID="LinkButton3" class="btn btn-danger"
                                         runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                        &nbsp;
                                     </div>
                                </div>
                            </div>

                        </div>                       
                        <br />

                        <div class="row">
                          
                        <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" 
                                        runat="server" placeholder="DOB" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" 
                                        runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                                </div>
                        </div>

                        <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="TextBox10" 
                                 runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                                </div>
                        </div>

                        </div>
                        <br />

                        <div class="row">

                        <div class="col-md-4">
                            <label>State</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox11" 
                                    runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>City</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox12" 
                                    runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>Pin Code</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox13" 
                                    runat="server" placeholder="Pin Code" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>

                        </div>
                        <br />

                        <div class="row">
                            <div class="col-12">
                                <label>Full Postal Address</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox14" 
                                            runat="server" placeholder="Full Postal Address" 
                                            TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                    </div>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <asp:Button ID="Button2" class="btn btn-lg col-12 btn-danger" 
                                    runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
                            </div>
                        </div>

                        
                        </div>
                    </div>
               <a href="homepage.aspx"><< Back To Home</a> <br><br>
            </div>
        

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col img-cent" >
                                <h4>Members List</h4>                              
                            </div>
                        </div>


                         <div class="row">
                            <div class="col" >
                                <hr>
                            </div>
                        </div>

                        
                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [member_master_table]"></asp:SqlDataSource>
                            <div class="col" >
                                <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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

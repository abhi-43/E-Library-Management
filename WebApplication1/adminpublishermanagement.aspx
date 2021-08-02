<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="WebApplication1.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
      $(document).ready(function () {

          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
        <div class="row">
            <div class="col-md-5">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col  img-cent" >
                                <h4>Publisher Details</h4>                             
                            </div>
                        </div>

                         <div class="row">
                            <div class="col img-cent" >
                                <img width="100px" src="Images/publisher.png"/>
                            </div>
                        </div>
                        

                         <div class="row">
                            <div class="col" >
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-4" >
                               <label>Publisher ID</label>
                                <div class="form-group"> 
                                    <div class="input-group"> 
                                    <asp:TextBox ID="TextBox3" class="form-control" 
                                     runat="server" placeholder="ID"></asp:TextBox>

                                    <asp:Button class="btn btn-primary" 
                                        ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                     </div>
                                </div>
                            </div>

                            <div class="col-md-8" >
                               <label>Publisher Name</label>
                                <div class="form-group">    
                                    <asp:TextBox ID="TextBox4" class="form-control" 
                                     runat="server" placeholder="Publisher Name"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                       
                        <br />
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button1" CssClass="btn btn-lg btn-success col-12" runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" CssClass="btn btn-lg btn-warning col-12" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" CssClass="btn btn-lg btn-danger col-12" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                <h4>Publisher List</h4>                              
                            </div>
                        </div>


                         <div class="row">
                            <div class="col" >
                                <hr>
                            </div>
                        </div>

                        
                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col" >
                                <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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

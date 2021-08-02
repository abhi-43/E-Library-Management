<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissue.aspx.cs" Inherits="WebApplication1.adminbookissue" %>
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
                                <h3>Book Issuing</h3>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col img-cent" >
                                <img width="100px" src="Images/books.png"/>
                            </div>
                        </div>
                        

                         <div class="row">
                            <div class="col" >
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6" >
                               <label>Member ID</label>
                                <div class="form-group">    
                                    <asp:TextBox ID="TextBox4" class="form-control" 
                                     runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6" >
                               <label>Book ID</label>
                                <div class="form-group"> 
                                    <div class="input-group"> 
                                    <asp:TextBox ID="TextBox3" class="form-control" 
                                     runat="server" placeholder="Book ID"></asp:TextBox>

                                    <asp:Button class="btn btn-primary" 
                                        ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                     </div>
                                </div>
                             </div>

                        </div>
                       
                        <br />
                        <div class="row">

                            <div class="col-md-6" >
                               <label>Member Name</label>
                                <div class="form-group">    
                                    <asp:TextBox ID="TextBox1" class="form-control" 
                                     runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-6" >
                               <label>Book Name</label>
                                <div class="form-group">    
                                    <asp:TextBox ID="TextBox2" class="form-control" 
                                     runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <br />
                        
                        <div class="row">

                            <div class="col-md-6" >
                               <label>Issue Date</label>
                                <div class="form-group">    
                                    <asp:TextBox ID="TextBox5" class="form-control" 
                                     runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-6" >
                               <label>Due Date</label>
                                <div class="form-group">    
                                    <asp:TextBox ID="TextBox6" class="form-control" 
                                     runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <br />
                        <div class="row">                        
                            <div class="col-6">
                                <asp:Button ID="Button3" Class="btn btn-lg btn-info col-12" runat="server" Text="Issue" OnClick="Button3_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Button ID="Button4" Class="btn btn-lg btn-success col-12" runat="server" Text="Return" OnClick="Button4_Click" />
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
                            <div class="col img-cent">
                                <h3>Issued Book List</h3>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col" >
                                <hr>
                            </div>
                        </div>

                        
                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col" >
                                <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
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

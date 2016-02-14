<%@ Page Title="" Language="C#" MasterPageFile="~/ITSUser.Master" AutoEventWireup="true" CodeBehind="ITSReport.aspx.cs" Inherits="Welcome2Deloitte.ITSReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">  
         <div id="mainContainer" class="box-header with-border">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">  
                        <div class="jumbotron">  
                            <p class="text-danger">Responsive GridView in ASP.NET </p>  
                            <span class="text-info">Desktop Tablet Phone Different layout </span>  
                        </div>
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="grdITSUser" AllowPaging="true" AlternatingRowStyle-BackColor="WhiteSmoke"  runat="server" Width="95%" CssClass="table table-striped table-bordered table-hover"  DataKeyNames="Requisition NO" EmptyDataText="There are no data records to display." AlternatingRowStyle-BorderStyle="Solid"  PagerSettings-Mode="NextPrevious" PagerStyle-BorderStyle="Solid" ViewStateMode="Inherit" AutoGenerateColumns="False" OnPageIndexChanging="grdCustomer_PageIndexChanging">  
                                        <Columns>  
                                            <asp:BoundField DataField="Requisition NO" HeaderText="Requisition NO" ReadOnly="True" SortExpression="Requisition NO" />  
                                            <asp:BoundField DataField="Candidate ID" HeaderText="Candidate ID" SortExpression="Candidate ID" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />  
                                            <asp:BoundField DataField="Employee No" HeaderText="Employee No" SortExpression="Employee No" ItemStyle-CssClass="visible-xs" HeaderStyle-CssClass="visible-xs" />  
                                            <asp:BoundField DataField="Hiring Location" HeaderText="Hiring Location" SortExpression="Hiring Location" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" />  
                                            <asp:BoundField DataField="Email ID" HeaderText="Email ID" SortExpression="Email ID" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />  
                                            <asp:BoundField DataField="Candidate Name" HeaderText="Candidate Name" SortExpression="Candidate Name" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />  
                                            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" />  
                                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />  
                                            <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" />  
                                            <asp:BoundField DataField="Candidate Mobile Phone" HeaderText="Candidate Mobile Phone" SortExpression="Candidate Mobile Phone" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />  
                                        </Columns>  
                                    </asp:GridView>  
                                  </div>
                                </div>  
                            </div>  
                        </div>  
                </div>  
            </div>  
        </div>  
        </form>
    
    <!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="plugins/chartjs/Chart.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
 <script src="Scripts/js/jquery.bootpag.min.js"></script>
</asp:Content>

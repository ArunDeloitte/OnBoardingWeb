<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminReports.aspx.cs" Inherits="Welcome2Deloitte.AdminReports" %>
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
                                <div  class="table-responsive">  
                                    <asp:GridView ID="grdCustomer" AllowPaging="True" AlternatingRowStyle-BackColor="WhiteSmoke"  runat="server" Width="93%" CssClass="table table-striped table-bordered table-hover"  DataKeyNames="Candidate_ID" EmptyDataText="There are no data records to display." AlternatingRowStyle-BorderStyle="Solid"  PagerSettings-Mode="NextPrevious" PagerStyle-BorderStyle="Solid" AutoGenerateColumns="False" OnPageIndexChanging="grdCustomer_PageIndexChanging" AutoGenerateEditButton="True" PagerSettings-FirstPageText="First" PagerSettings-LastPageText="Last" PagerSettings-PreviousPageText="Previous  " PagerSettings-Visible="True" ClientIDMode="Static" PagerSettings-NextPageText="  Next" OnRowEditing="grdCustomer_RowEditing" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowUpdating="grdCustomer_RowUpdating">  
                                        <AlternatingRowStyle BackColor="White" BorderStyle="Solid" ForeColor="#284775"></AlternatingRowStyle>
                                        <Columns>  
                                            
                                            <asp:BoundField DataField="Candidate_ID" HeaderText="Candidate ID" SortExpression="Candidate ID" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" >  
                                                <HeaderStyle CssClass="visible-lg"></HeaderStyle>

                                                <ItemStyle CssClass="visible-lg"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Employee_ID" HeaderText="Employee No" SortExpression="Employee No" ItemStyle-CssClass="visible-xs" HeaderStyle-CssClass="visible-xs" >  
                                                <HeaderStyle CssClass="visible-xs"></HeaderStyle>

                                                <ItemStyle CssClass="visible-xs"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Hiring_Location" HeaderText="Hiring Location" SortExpression="Hiring Location" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" >  
                                                <HeaderStyle CssClass="visible-md"></HeaderStyle>

                                                <ItemStyle CssClass="visible-md"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="EmailID" HeaderText="Email ID" SortExpression="Email ID" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" >  
                                                 <HeaderStyle CssClass="hidden-xs"></HeaderStyle>

                                                 <ItemStyle CssClass="hidden-xs"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CandidateName" HeaderText="Candidate Name" SortExpression="Candidate Name" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" >  
                                                <HeaderStyle CssClass="hidden-xs"></HeaderStyle>

                                                <ItemStyle CssClass="hidden-xs"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" >  
                                                <HeaderStyle CssClass="visible-md"></HeaderStyle>

                                                <ItemStyle CssClass="visible-md"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" >  
                                                <HeaderStyle CssClass="visible-lg"></HeaderStyle>

                                                <ItemStyle CssClass="visible-lg"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" >  
                                                <HeaderStyle CssClass="visible-md"></HeaderStyle>

                                                <ItemStyle CssClass="visible-md"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CandidateMobilePhone" HeaderText="Candidate Mobile Phone" SortExpression="Candidate Mobile Phone" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" >  
                                                <HeaderStyle CssClass="visible-lg"></HeaderStyle>

                                                <ItemStyle CssClass="visible-lg"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Joining_Status" HeaderText="Joining Status" SortExpression="Joining Status" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" >  
                                                <HeaderStyle CssClass="visible-lg"></HeaderStyle>

                                                <ItemStyle CssClass="visible-lg"></ItemStyle>
                                            </asp:BoundField>
                                        </Columns>  

                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

                                        <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="  Next" PreviousPageText="Previous  "></PagerSettings>

                                       <PagerStyle BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Top" BackColor="#284775" ForeColor="White"></PagerStyle>
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>  
                                  </div>
                                </div>  
                            </div>  
                        </div>  
                </div>  
            </div>  
            <div class="container">
            <button type="button" class="btn  btn-primary pull-left">Email Report</button>
                &nbsp &nbsp &nbsp
            <button type="button" class="btn  btn-primary pull-left">Download Report</button>
        </div>
        </div>  
        </form>
    
    <!-- jQuery 2.2.0 -->

</asp:Content>

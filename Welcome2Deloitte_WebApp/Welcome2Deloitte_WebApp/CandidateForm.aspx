<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate.Master" AutoEventWireup="true" CodeBehind="CandidateForm.aspx.cs" Inherits="Welcome2Deloitte.CandidateForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="Form1" action="" method="post" runat="server">
    <div class="container-fluid">
  <div class="row row-full">
    <div class="col-sm-6">
      <div class="leftside">
        <div class="login-box">
  <div class="login-logo">
    <a href="">Welcome2<b>Deloitte</b></a>
  </div>
  <!-- /.login-logo -->
        
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    
      <div class="form-group has-feedback ">
        <asp:TextBox ID="TxtEmailId" class="form-control" TextMode="Email" placeholder="EmailID" runat="server"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>

        
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtMobile" class="form-control" TextMode="Phone" placeholder="Mobile Number" runat="server"></asp:TextBox>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>

      </div>
      <div class="row">
        <div class="col-xs-2">
          <div class="checkbox icheck">
            
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-6">
           <asp:Button class="btn btn-primary btn-block btn-flat" ID="BtnVerify" runat="server" Text="Verify Details" OnClick="BtnVerify_Click"/>
          
        </div>
        <!-- /.col -->
      </div>

  </div>
  <!-- /.login-box-body -->
</div>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="rightside">

<div class="login-box">
  <div class="login-logo">
    <a >Please confirm your <b>Details</b></a>
  </div>
  <!-- /.login-logo -->
        
  <div class="login-box-body disabled">
    <p class="login-box-msg"></p>

    
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtFirstName" class="form-control" placeholder="First Name" runat="server" ReadOnly="True"></asp:TextBox>
        
        <span class="glyphicon glyphicon-globe form-control-feedback"></span>       
      </div>
      <div class="form-group has-feedback ">
        <asp:TextBox ID="TxtLastName" class="form-control" runat="server" placeholder="Last Name" ReadOnly="True"></asp:TextBox>
        <span class="glyphicon glyphicon-gift form-control-feedback"></span>       
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtMobileNo" class="form-control" runat="server" placeholder="Mobile No" ReadOnly="True"></asp:TextBox>
        <span class="glyphicon glyphicon-bell form-control-feedback"></span>       
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtEmailIdDisp" class="form-control" runat="server" placeholder="Email Id" ReadOnly="True"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>       
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtEntity" class="form-control" runat="server" placeholder="Entity" ReadOnly="True"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>       
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtFunction" class="form-control" runat="server" placeholder="Function" ReadOnly="True"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>       
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtServiceLine" class="form-control" runat="server" placeholder="Service Line" ReadOnly="True"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>       
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtServiceArea" class="form-control" runat="server" placeholder="Service Area" ReadOnly="True"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>       
      </div>
      <div class="row">
        <div class="col-xs-4">
         
        </div>
        <!-- /.col -->
        <div class="col-xs-8">
           <asp:Button class="btn btn-primary btn-block btn-flat" ID="BtnSequenceNo" runat="server" Text="Generate Sequence No" />
          
        </div>
        <!-- /.col -->
      </div>

  </div>
  <!-- /.login-box-body -->
</div>
      </div>
    </div>
  </div>
</div>
     
       
       
   </form> 
</asp:Content>

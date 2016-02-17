<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Welcome2Deloitte.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
    </head>
<body class="hold-transition login-page" >
     <div class="wrapper skin-blue-light sidebar-mini" style="background-color:#124b93">
    <header class="main-header">
    <!-- Logo --> 
     
    <a href="" class="logo"> 
         <!-- mini logo for sidebar mini 50x50 pixels -->
       
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src="dist/img/logowhite.png"  width="50px"> </span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><img src="dist/img/logowhite.png"  width="210px"> </span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    
  </header>
         </div>
    <div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html">Welcome2<b>Deloitte</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    <form action="" method="post" runat="server">
      <div class="form-group has-feedback">
        <asp:TextBox ID="TxtUserName" class="form-control"  placeholder="Username" runat="server"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="txtPassword" class="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <asp:DropDownList ID="ddlLocation" class="form-control" runat="server" AutoPostBack="False">
            <asp:ListItem>Select Location</asp:ListItem>
            <asp:ListItem>Bangalore</asp:ListItem>
            <asp:ListItem>Gurgaon</asp:ListItem>
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Mumbai</asp:ListItem>
        </asp:DropDownList>
        <span class="glyphicon glyphicon-arrow-down form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
           <asp:Button class="btn btn-primary btn-block btn-flat" ID="BtnSignIn" runat="server" Text="Sign In" OnClick="BtnSignIn_Click" />
          
        </div>
        <!-- /.col -->
      </div>
    </form>

    

    

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
<!-- jQuery 2.2.0 -->
<script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>

</body>
</html>

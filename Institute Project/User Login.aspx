<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Login.aspx.cs" Inherits="Institute_Project.User_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Css/User Login.css" rel="stylesheet" type="text/css" /> 
    <link href="css/normalize.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" 
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" 
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server">

        <div id="container">
            <header>

               
                <asp:Image ID="Image1" runat="server" Height="110px" />
                 
                <div class="ContainerLogin">
                    <h1>واجهة تسجيل الدخول الى النظام</h1>
                    <div class="Content">
                        <asp:Label ID="UserName" class="Labels" runat="server" Text="أسم المستخدم" Font-Size="X-Large"></asp:Label>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </div>

                     <div class="Content">
                        <asp:Label ID="Password" class="Labels" runat="server" Text="كلمة المرور" Font-Size="X-Large" ValidateRequestMode="Enabled"></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                         <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" Text="دخول" Width="190px" Height="77px" OnClick="btnLogin_Click1" />

                </div>
                
            </header>

        </div>

    </form>
</body>
</html>

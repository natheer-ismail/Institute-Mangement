<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Institute Manage.aspx.cs" Inherits="Institute_Project.Student_Managment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/Institute Manage.css" rel="stylesheet" type="text/css" /> 
    <link href="css/normalize.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" 
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" 
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div id="overlay">
    <form id="form1" runat="server">
        <div ID="container">
            
            <div id="content">
                <div id="Logo">
                    <h1>واجهة أدارة المعهد</h1>
                    <i class="fa-solid fa-school"></i>
                 </div>
                    <div id="main">
                        <div id="box">
                            <a href="#">
                                <asp:Label ID="Label1" runat="server" Text="أدارة الطلاب" Font-Bold="True" Font-Size="40px"></asp:Label>
                                <i class="fa-solid fa-user-graduate"></i>
                            </a>
                        </div>

                         <div id="box">
                             <a href="#">
                                <asp:Label ID="Label2" runat="server" Text="أدارة المدربين" Font-Bold="True" Font-Size="40px"></asp:Label>
                                <i class="fa-solid fa-users"></i>
                            </a>
                        </div>

                         <div id="box">
                             <a href="#">
                                <asp:Label ID="Label3" runat="server" Text="الدبلومات" Font-Bold="True" Font-Overline="False" Font-Size="40px"></asp:Label>
                                <i class="fa-solid fa-book-open-reader"></i>
                            </a>
                        </div>

                     </div>

                     <div id="main">

                         <div id="box">
                             <a href="#">
                                <asp:Label ID="Label4" runat="server" Text="أدارة الكورسات" Font-Bold="True" Font-Size="40px"></asp:Label>
                                <i class="fa-solid fa-layer-group"></i>
                            </a>
                        </div>

                         <div id="box">
                             <a href="#">
                                <asp:Label ID="Label5" runat="server" Text="أدارة المستخدمين" Font-Bold="True" Font-Size="40px"></asp:Label>
                                <i class="fa-solid fa-users-gear"></i>
                            </a>
                        </div>

                         <div id="box">
                             <a href="#">
                                <asp:Label ID="Label6" runat="server" Text="أدارة الاقسام" Font-Bold="True" Font-Size="40px"></asp:Label>
                                <i class="fa-solid fa-user-graduate"></i>
                            </a>
                        </div>

                    </div>
            </div>
        </div>
    </form>
        </div>
</body>
</html>

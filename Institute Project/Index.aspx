<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Institute_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Institute</title>
    <link href="Css/Style.css" rel="stylesheet" type="text/css" /> 
    <link href="css/normalize.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" 
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" 
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    
</head>
<body>
    <div class="Countainer">
         
        <div class="Content">
            <%-- Start Navigation Bar --%>
           <div id="NavigationContainer">
            <div class="Navigation" id="Navigaion">
                
                <i class="fa-solid fa-bars" id="MenuBar"></i>
                <div class="Image">
                    <div id="Logo">
                        <asp:Image ID="ImgLogo" runat="server" ImageUrl="~/Images/Logo/whatsapp_logo_icon_147205.png" />
                        <asp:Label ID="txtLogo" runat="server" Text="Institute"></asp:Label>
                    </div>
                </div>
                <%-- Start Nav --%>
                <nav id="Nav">
                    <div class="NavItems" >
                        <a href="#" id="Active">
                                                                                                 <i class="fa-solid fa-house"></i>
                            <h1>Home</h1>
                        </a>
                    </div>
                    
                     <div class="NavItems">
                         <a href="#">
                            <i class="fa-solid fa-circle-info"></i>
                            <h1>About</h1>
                        </a>
                    </div>

                     <div class="NavItems">
                         <a href="#">
                            <i class="fa-solid fa-layer-group"></i>
                            <h1>Service</h1>
                        </a>
                    </div>

                     <div class="NavItems">
                         <a href="#">
                            <i class="fa-solid fa-address-card"></i>
                            <h1>Contact</h1>
                        </a>
                    </div>

                     <div class="NavItems">
                         <a href="User Login.aspx">
                            <i class="fa-solid fa-book"></i>
                            <h1>Ins Manage</h1>
                        </a>
                    </div>

                    <div class="NavItems" id="Language_ul">
                        <a href="#">
                            <i class="fa-solid fa-language"></i>
                            <h1>Language</h1>
                        </a>

                        <i class="fa-solid fa-caret-down" id="DropDown"></i>
                        <ul>
                            <li><h2><a href="#">Arabic</a></h2></li>
                            <li><h2><a href="#">English</a></h2> </li>
                        </ul>
                    </div>
                   
                     <div class="NavItems" id="login">
                         <a href="#">
                            <i class="fa-solid fa-right-to-bracket"></i>
                            <h1>LogIn</h1>
                         </a>
                    </div>

                </nav>
                <%-- End Nav --%>

            </div>
         </div>
            <%-- End Navigation Bar-------------- --%>

            <%-- Start Home Page SidBar --%>
            <div class="ManiContent">
                <div id="ImgCo">
                <div class="ImgContainer">
                    <div id="Overflow"></div>
                    <div class="Text">
                        <h1>Welcome To Our <span><b>I</b>nstitute</span></h1>
                    </div>
                    
                </div>
                </div>
            </div>

            <%-- End  Home Page SidBar --%>

        </div> 
        <%-- End  Div Content --%>
    </div>
    <%-- End  Div Countainer --%>
   <script src="JavaScript/JavaScript.js"></script>
</body>
</html>

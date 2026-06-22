<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Institute_Project.My_Page.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Css/style.css" rel="stylesheet" type="text/css" /> 
    <link href="css/normalize.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" 
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" 
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div id="container">
        <header>
            <div id="headerContent">
                <div class="box">
                    <h1>الجمهورية اليمنية <br /> وزارة التعليم والتدريب المهني <br /> المعهد اليمني الاكاديمي</h1>
                </div>

                 <div class="box" id="boxLogo">
                     <asp:Image ID="Logo" runat="server" ImageUrl="~/Images/Logo/94031352_01ae62-removebg.png" />
                </div>

                 <div class="box">
                    <h2>Republic of Yemen <br /> Minstry of artistry studies and <br />traning occuupational <br /> The academic Yaminies Institute</h2>
                </div>

                
            </div>
        </header>
        <%-- End Header------------------ --%>
        
        <div id="containerSidBard">
            <div id="Navigation">
                 <i class="fa-solid fa-bars" id="MenuBar"></i>

                <nav id="Nav">
                   
                    

                    <div class="NavItems" >
                        
                           <a href="#" id="Active">
                                <i class="fa-solid fa-user-graduate"></i>
                                <asp:Label ID="Label1" runat="server" CssClass="Labels" Text="ادارة الطلاب" Font-Bold="True" Font-Size="25px"></asp:Label>
                            </a>
                       
                    </div>
                    
                     <div class="NavItems">
                        <a href="#">
                                <i class="fa-solid fa-users"></i>
                                <asp:Label ID="Label2" runat="server" CssClass="Labels" Text="ادارة المدربين" Font-Bold="True" Font-Size="25px"></asp:Label>
                                
                            </a>
                    </div>

                     <div class="NavItems">
                         <a href="#">
                             <i class="fa-solid fa-book-open-reader"></i>
                             <asp:Label ID="Label3" runat="server" CssClass="Labels" Text="ادارة الدبلومات" Font-Bold="True" Font-Overline="False" Font-Size="25px"></asp:Label>
                                
                            </a>
                    </div>

                     <div class="NavItems">
                        <a href="#">
                                <i class="fa-solid fa-layer-group"></i>
                                <asp:Label ID="Label6" runat="server" CssClass="Labels" Text="ادارة الكورسات" Font-Bold="True" Font-Size="25px"></asp:Label>
                                
                            </a>
                    </div>

                     <div class="NavItems">
                          <a href="#">
                                <i class="fa-solid fa-layer-group"></i>
                                <asp:Label ID="Label4" runat="server" CssClass="Labels" Text="ادارة الكورسات" Font-Bold="True" Font-Size="25px"></asp:Label>
                                
                            </a>
                    </div>

                    <div class="NavItems" id="Language_ul">
                        <a href="#">
                                 <i class="fa-solid fa-users-gear"></i>
                                <asp:Label ID="Label5" runat="server" CssClass="Labels" Text="ادارةالمستخدمين" Font-Bold="True" Font-Size="25px"></asp:Label>
                               
                       </a>
                    </div>
                </nav>
            </div>

            <div id="Main">

            </div>
        </div>



    </div>
       <script src="~/JavaScript/JavaScript.js"></script>

</body>
</html>

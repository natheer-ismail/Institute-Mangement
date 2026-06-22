<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="Courses Managment.aspx.cs" Inherits="Institute_Project.My_Page.Courses_Managment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <%-- شفافية للخلفية --%>  
    <div id="smOverlay"></div>
    <h1>واجهة أدارة الكورسات</h1>

       

    <div id="smContainer">
       <div id="smContent">

           <div class="smInfoBox" id="smMainText">
               <div class="smMainContent">
               
                   

                    <div class="smBox">
                      
                        <asp:Label ID="Label2" runat="server" Text="إسم الكورس" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="CourseName" runat="server" Height="51px" Width="358px" Font-Bold="True" Font-Size="30px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label3" runat="server" Text="المدة" Font-Bold="True" Font-Size="30px" CssClass="Labelss" ></asp:Label>
                       <asp:TextBox ID="CourseDuration" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                   

                    <div class="smBox">
                       <asp:Label ID="Label5" runat="server" Text="السعر" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="CourseCost" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    
                </div>

               <div class="smMainContent">

                   <div class="smBox">
                       <asp:Label ID="Label4" runat="server" Text="الوقت" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="CourseTime" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                            <asp:ListItem Selected="True">صباحي</asp:ListItem>
                            <asp:ListItem>مسائي</asp:ListItem>
                        </asp:DropDownList>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label8" runat="server" Text="تاريخ البداية" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:TextBox ID="CourseStartDate" TextMode="Date" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>

                   </div>

                   
                   

                    <div class="smBox">
                       <asp:Label ID="Label10" runat="server" Text="اسم الدبلوم" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="StudyType" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                           
                        </asp:DropDownList>
                   </div>

                </div>

           </div>

           <div class="ButtonsBox">

               <div class="st_buttonsBox">
                    <asp:Button ID="CM_btnAdd" runat="server" Text="إضافة" Height="51px" Width="134px" CssClass="Buttons" OnClick="CM_btnAdd_Click" />
                   <i class="fa-solid fa-plus"></i>
                    
               </div>

               <div class="st_buttonsBox">
                     <asp:Button ID="CM_btnEdit" runat="server" Text="تعديل" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayCourses.aspx" />
                     <i class="fa-solid fa-pen-to-square"></i>
               </div>

                <div class="st_buttonsBox">
                     <asp:Button ID="CM_btnShow" runat="server" Text="عرض" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayCourses.aspx" />
                    <i class="fa-solid fa-user-graduate"></i>
               </div>
               <div class="st_buttonsBox">
                    <asp:Button ID="CM_btnSearch" runat="server" Text="بحث" Height="51px" Width="133px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayCourses.aspx"  />
                   <i class="fa-solid fa-magnifying-glass"></i>
               </div>

               <div class="st_buttonsBox">
                    <asp:Button ID="CM_btnDelete" runat="server" Text="حذف" Height="51px" Width="133px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayCourses.aspx" />
                   <i class="fa-solid fa-trash"></i>
               </div>


              
           </div>




       </div>
    </div>
        
    </form>
        
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="Student Managment.aspx.cs" Inherits="Institute_Project.My_Page.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <%-- شفافية للخلفية --%>  
    <div id="smOverlay"></div>
    <h1>واجهة أدارة الطلاب</h1>


    <div id="smContainer">
       <div id="smContent">

           <div class="smInfoBox" id="smMainText">
               <div class="smMainContent">
               
                   <div class="smBox">
                       <asp:Label ID="Label1" runat="server" Text="رقم الطالب" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="StudID" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                      
                        <asp:Label ID="Label2" runat="server" Text="إسم الطالب" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="StudName" runat="server" Height="51px" Width="358px" Font-Bold="True" Font-Size="30px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label3" runat="server" Text="العمر" Font-Bold="True" Font-Size="30px" CssClass="Labelss" ></asp:Label>
                       <asp:TextBox ID="StudAge" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                   

                    <div class="smBox">
                       <asp:Label ID="Label5" runat="server" Text="رقم الهاتف" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="StudPhone" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label6" runat="server" Text=" رقم ولي الأمر" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="Stud_F_Phone" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>
                    <div class="smBox">

                       <asp:Label ID="Label7" runat="server" Text="العنوان" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="StudAddress" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>

                   </div>
                </div>

               <div class="smMainContent">

                   <div class="smBox">
                       <asp:Label ID="Label12" runat="server" Text="مكان الميلاد" Font-Bold="True" Font-Size="30px" CssClass="Labelss" ></asp:Label>
                       <asp:TextBox ID="StudBirthPlace" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label8" runat="server" Text="تاريخ الميلاد" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:TextBox ID="StudBirthDate" runat="server" Height="51px" TextMode="Date" Width="358px" CssClass="TextBoxes"></asp:TextBox>

                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label9" runat="server" Text="المؤهل" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="StudQual" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>
                    <div class="smBox">
                       <asp:Label ID="Label4" runat="server" Text="الجنس" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="StudGender" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                            <asp:ListItem Selected="True">ذكر</asp:ListItem>
                            <asp:ListItem>أنثى</asp:ListItem>
                        </asp:DropDownList>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label10" runat="server" Text="القسم" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="StudDept" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                           
                        </asp:DropDownList>
                   </div>
                    <div class="smBox">
                       <asp:Label ID="Label11" runat="server" Text="نوع الدراسة" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="StudTypeStudy" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                            <asp:ListItem>دبلوم</asp:ListItem>
                            <asp:ListItem>دورات</asp:ListItem>
                           
                        </asp:DropDownList>
                   </div>
                </div>

           </div>

           <div class="ButtonsBox">

               <div class="st_buttonsBox">
                    <asp:Button ID="st_btnAdd" runat="server" Text="إضافة" Height="51px" Width="134px" CssClass="Buttons" OnClick="st_btnAdd_Click1" />
                   <i class="fa-solid fa-plus"></i>
                    
               </div>

               <div class="st_buttonsBox">
                     <asp:Button ID="st_btnEdit" runat="server" Text="تعديل" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayStudent.aspx" />
                     <i class="fa-solid fa-pen-to-square"></i>
               </div>

                <div class="st_buttonsBox">
                     <asp:Button ID="st_btnShow" runat="server" Text="عرض" Height="51px" Width="134px" CssClass="Buttons" OnClick="st_btnShow_Click" PostBackUrl="~/My Page/DisplayStudent.aspx" />
                    <i class="fa-solid fa-user-graduate"></i>
               </div>
               <div class="st_buttonsBox">
                    <asp:Button ID="st_btnSearch" runat="server" Text="بحث" Height="51px" Width="133px" CssClass="Buttons" OnClick="st_btnSearch_Click" PostBackUrl="~/My Page/DisplayStudent.aspx" />
                   <i class="fa-solid fa-magnifying-glass"></i>
               </div>

               <div class="st_buttonsBox">
                    <asp:Button ID="st_btnDelete" runat="server" Text="حذف" Height="51px" Width="133px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayStudent.aspx" />
                   <i class="fa-solid fa-trash"></i>
               </div>


              
           </div>




       </div>
    </div>
        
    </form>
        
</asp:Content>

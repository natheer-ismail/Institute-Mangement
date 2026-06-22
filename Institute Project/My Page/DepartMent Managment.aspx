<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="DepartMent Managment.aspx.cs" Inherits="Institute_Project.My_Page.DepartMent_Managment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <%-- شفافية للخلفية --%>  
    <div id="smOverlay"></div>
    <h1>واجهة أدارة الاقسام</h1>

       

    <div id="smContainer">
       <div id="smContent">

           <div class="smInfoBox" id="smMainText">
               <div class="smMainContent">
               
                  

                    <div class="smBox">
                      
                        <asp:Label ID="Label2" runat="server" Text="رقم القسم" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="DeptID" runat="server" Height="51px" Width="358px" Font-Bold="True" Font-Size="30px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label3" runat="server" Text="اسم القسم" Font-Bold="True" Font-Size="30px" CssClass="Labelss" ></asp:Label>
                       <asp:TextBox ID="DeptName" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                   
                   <div class="smBox">
                       <asp:Label ID="Label4" runat="server" Text="حالة القسم" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="DeptState" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                            <asp:ListItem Selected="True">مفتوح</asp:ListItem>
                            <asp:ListItem>معلق</asp:ListItem>
                        </asp:DropDownList>
                   </div>
                    
                </div>

               
           </div>
          <%-- /////////// --%>

           <div class="ButtonsBox">

               <div class="st_buttonsBox">
                    <asp:Button ID="st_btnAdd" runat="server" Text="أضافة" Height="51px" Width="134px" CssClass="Buttons" OnClick="st_btnAdd_Click" />
                   <i class="fa-solid fa-plus"></i>
                    
               </div>

               <div class="st_buttonsBox">
                     <asp:Button ID="st_btnEdit" runat="server" Text="تعديل" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayDepartment.aspx" />
                     <i class="fa-solid fa-pen-to-square"></i>
               </div>

                <div class="st_buttonsBox">
                     <asp:Button ID="st_btnShow" runat="server" Text="عرض" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayDepartment.aspx" />
                    <i class="fa-solid fa-user-graduate"></i>
               </div>
               <div class="st_buttonsBox">
                    <asp:Button ID="st_btnSearch" runat="server" Text="بحث" Height="51px" Width="133px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayDepartment.aspx" />
                   <i class="fa-solid fa-magnifying-glass"></i>
               </div>

               <div class="st_buttonsBox">
                    <asp:Button ID="st_btnDelete" runat="server" Text="حذف" Height="51px" Width="133px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayDepartment.aspx" />
                   <i class="fa-solid fa-trash"></i>
               </div>


              
           </div>

       </div>
    </div>
        
    </form>
        
</asp:Content>
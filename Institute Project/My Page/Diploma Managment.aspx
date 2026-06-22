<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="Diploma Managment.aspx.cs" Inherits="Institute_Project.My_Page.Diploma_Managment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <%-- شفافية للخلفية --%>  
    <div id="smOverlay"></div>
    <h1>واجهة أدارة الدبلومات</h1>


    <div id="smContainer">
       <div id="smContent">

           <div class="smInfoBox" id="smMainText">
               <div class="smMainContent">
               
                  

                    <div class="smBox">
                      
                        <asp:Label ID="Label2" runat="server" Text="إسم الدبلوم" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="DiplName" runat="server" Height="51px" Width="358px" Font-Bold="True" Font-Size="30px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label3" runat="server" Text="السعر" Font-Bold="True" Font-Size="30px" CssClass="Labelss" ></asp:Label>
                       <asp:TextBox ID="DiplCost" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                   

                    <div class="smBox">
                       <asp:Label ID="Label5" runat="server" Text="المدة" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="DiplDuration" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div> 
                    
                </div>

               <div class="smMainContent">
                    
                    <div class="smBox">
                       <asp:Label ID="Label4" runat="server" Text="الوقت" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="DiplomaTime" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                            <asp:ListItem Selected="True">صباحي</asp:ListItem>
                            <asp:ListItem>مسائي</asp:ListItem>
                        </asp:DropDownList>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label10" runat="server" Text="القسم" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="DiplDept" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                           
                        </asp:DropDownList>
                   </div>
                   
                </div>

           </div>
          <%-- /////////// --%>

           <div class="ButtonsBox">

               <div class="st_buttonsBox">
                    <asp:Button ID="DM_btnAdd" runat="server" Text="أضافة" Height="51px" Width="134px" CssClass="Buttons" OnClick="DM_btnAdd_Click" />
                   <i class="fa-solid fa-plus"></i>
                    
               </div>

               <div class="st_buttonsBox">
                     <asp:Button ID="DM_btnEdit" runat="server" Text="تعديل" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayDiploma.aspx" />
                     <i class="fa-solid fa-pen-to-square"></i>
               </div>

                <div class="st_buttonsBox">
                     <asp:Button ID="DM_btnShow" runat="server" Text="عرض" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayDiploma.aspx" />
                    <i class="fa-solid fa-user-graduate"></i>
               </div>
               <div class="st_buttonsBox">
                    <asp:Button ID="DM_btnSearch" runat="server" Text="بحث" Height="51px" Width="133px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayDiploma.aspx" />
                   <i class="fa-solid fa-magnifying-glass"></i>
               </div>

               <div class="st_buttonsBox">
                    <asp:Button ID="DM_btnDelete" runat="server" Text="حذف" Height="51px" Width="133px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayDiploma.aspx" />
                   <i class="fa-solid fa-trash"></i>
               </div>


              
           </div>

       </div>
    </div>
        
    </form>
        
</asp:Content>
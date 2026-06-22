<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="Trainer Managment.aspx.cs" Inherits="Institute_Project.My_Page.Trainer_Managment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <%-- شفافية للخلفية --%>  
    <div id="smOverlay"></div>
    <h1>واجهة أدارة المدربين</h1>

       

    <div id="smContainer">
       <div id="smContent">

           <div class="smInfoBox" id="smMainText">
               <div class="smMainContent">
               
                   <div class="smBox">
                       <asp:Label ID="Label1" runat="server" Text="رقم المدرب" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="TraierID" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                      
                        <asp:Label ID="Label2" runat="server" Text="إسم المدرب" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="TrainerName" runat="server" Height="51px" Width="358px" Font-Bold="True" Font-Size="30px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label3" runat="server" Text="التخصص" Font-Bold="True" Font-Size="30px" CssClass="Labelss" ></asp:Label>
                       <asp:TextBox ID="TrainerSpeci" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                   

                    <div class="smBox">
                       <asp:Label ID="Label5" runat="server" Text="رقم البطاقة" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="TrainerCard" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label6" runat="server" Text=" رقم الهاتف" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="TrainerPhone" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>
                    <div class="smBox">

                       <asp:Label ID="Label7" runat="server" Text="العنوان" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="TrainerAddress" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>

                   </div>
                </div>

               <div class="smMainContent">

                   <div class="smBox">
                       <asp:Label ID="Label12" runat="server" Text="الراتب" Font-Bold="True" Font-Size="30px" CssClass="Labelss" ></asp:Label>
                       <asp:TextBox ID="TrainerSalary" runat="server" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>

                    

                    <div class="smBox">
                       <asp:Label ID="Label9" runat="server" Text="تاريخ التوظيف" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                       <asp:TextBox ID="TrainerHireDate" runat="server" TextMode="Date" Height="51px" Width="358px" CssClass="TextBoxes"></asp:TextBox>
                   </div>
                    <div class="smBox">
                       <asp:Label ID="Label4" runat="server" Text="الجنس" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="TrainerGender" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                            <asp:ListItem Selected="True">ذكر</asp:ListItem>
                            <asp:ListItem>أنثى</asp:ListItem>
                        </asp:DropDownList>
                   </div>

                    <div class="smBox">
                       <asp:Label ID="Label10" runat="server" Text="القسم" Font-Bold="True" Font-Size="30px" CssClass="Labelss"></asp:Label>
                        <asp:DropDownList ID="TrainerDept" runat="server" Height="51px" Width="358px"  CssClass="TextBoxes" AutoPostBack="True" Font-Bold="True" Font-Size="25px">
                           
                        </asp:DropDownList>
                   </div>
                    
                </div>

           </div>

           <div class="ButtonsBox">

               <div class="st_buttonsBox">
                    <asp:Button ID="tm_btnAdd" runat="server" Text="إضافة" Height="51px" Width="134px" CssClass="Buttons" OnClick="tm_btnAdd_Click"  />
                   <i class="fa-solid fa-plus"></i>
                    
               </div>

               <div class="st_buttonsBox">
                     <asp:Button ID="tm_btnEdit" runat="server" Text="تعديل" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayInstractor.aspx" />
                     <i class="fa-solid fa-pen-to-square"></i>
               </div>

                <div class="st_buttonsBox">
                     <asp:Button ID="tm_btnShow" runat="server" Text="عرض" Height="51px" Width="134px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayInstractor.aspx"  />
                    <i class="fa-solid fa-user-graduate"></i>
               </div>
               <div class="st_buttonsBox">
                    <asp:Button ID="tm_btnSearch" runat="server" Text="بحث" Height="51px" Width="133px" CssClass="Buttons"  PostBackUrl="#" OnClick="tm_btnSearch_Click" />
                   <i class="fa-solid fa-magnifying-glass"></i>
               </div>

               <div class="st_buttonsBox">
                    <asp:Button ID="tm_btnDelete" runat="server" Text="حذف" Height="51px" Width="133px" CssClass="Buttons" PostBackUrl="~/My Page/DisplayInstractor.aspx"/>
                   <i class="fa-solid fa-trash"></i>
               </div>


              
           </div>




       </div>
    </div>
        
    </form>
        
</asp:Content>


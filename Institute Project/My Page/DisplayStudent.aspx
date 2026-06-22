<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="DisplayStudent.aspx.cs" Inherits="Institute_Project.My_Page.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <h1>بيانات الطلاب</h1>

        <div id="Display">
            
                   
         <div class="SearchBox" runat="server">
            <asp:Button ID="Button1" runat="server" Text="بحث" CssClass="btnSearch" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxSearch"></asp:TextBox>
            <i class="fa-solid fa-magnifying-glass"></i>
        </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" width="100%"  CellPadding="8" Font-Bold="True" Height="150px" DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center" DataKeyNames="Stud_ID">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Stud_ID" HeaderText="Stud_ID" InsertVisible="False" ReadOnly="True" SortExpression="Stud_ID" />
                    <asp:BoundField DataField="Stud_Name" HeaderText="Stud_Name" SortExpression="Stud_Name" />
                    <asp:BoundField DataField="Stud_Age" HeaderText="Stud_Age" SortExpression="Stud_Age" />
                    <asp:BoundField DataField="Stud_Phone" HeaderText="Stud_Phone" SortExpression="Stud_Phone" />
                    <asp:BoundField DataField="Stud_FPhone" HeaderText="Stud_FPhone" SortExpression="Stud_FPhone" />
                    <asp:BoundField DataField="Stud_Add" HeaderText="Stud_Add" SortExpression="Stud_Add" />
                    <asp:BoundField DataField="Stud_BP" HeaderText="Stud_BP" SortExpression="Stud_BP" />
                    <asp:BoundField DataField="Stud_PD" HeaderText="Stud_PD" SortExpression="Stud_PD" />
                    <asp:BoundField DataField="Stud_Quali" HeaderText="Stud_Quali" SortExpression="Stud_Quali" />
                    <asp:BoundField DataField="Stud_Sax" HeaderText="Stud_Sax" SortExpression="Stud_Sax" />
                    <asp:BoundField DataField="Type_Study" HeaderText="Type_Study" SortExpression="Type_Study" />

                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete">
                    <ControlStyle CssClass="Deletebtn" />
                    </asp:ButtonField>
                    <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit">
                    <ControlStyle CssClass="Addbtn" />
                    </asp:ButtonField>
                    <asp:ButtonField ButtonType="Button" HeaderText="Update" CommandName="Update" Text="Update">
                    <ControlStyle CssClass="Updatebtn" />
                    </asp:ButtonField>

                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [Stud_ID] = @original_Stud_ID AND (([Stud_Name] = @original_Stud_Name) OR ([Stud_Name] IS NULL AND @original_Stud_Name IS NULL)) AND (([Stud_Age] = @original_Stud_Age) OR ([Stud_Age] IS NULL AND @original_Stud_Age IS NULL)) AND [Stud_Phone] = @original_Stud_Phone AND (([Stud_FPhone] = @original_Stud_FPhone) OR ([Stud_FPhone] IS NULL AND @original_Stud_FPhone IS NULL)) AND (([Stud_Add] = @original_Stud_Add) OR ([Stud_Add] IS NULL AND @original_Stud_Add IS NULL)) AND (([Stud_BP] = @original_Stud_BP) OR ([Stud_BP] IS NULL AND @original_Stud_BP IS NULL)) AND (([Stud_PD] = @original_Stud_PD) OR ([Stud_PD] IS NULL AND @original_Stud_PD IS NULL)) AND (([Stud_Quali] = @original_Stud_Quali) OR ([Stud_Quali] IS NULL AND @original_Stud_Quali IS NULL)) AND (([Stud_Sax] = @original_Stud_Sax) OR ([Stud_Sax] IS NULL AND @original_Stud_Sax IS NULL)) AND (([Type_Study] = @original_Type_Study) OR ([Type_Study] IS NULL AND @original_Type_Study IS NULL))" InsertCommand="INSERT INTO [Student] ([Stud_ID], [Stud_Name], [Stud_Age], [Stud_FPhone], [Stud_Add], [Stud_BP], [Stud_PD], [Stud_Quali], [Stud_Sax], [Type_Study]) VALUES (@Stud_ID, @Stud_Name, @Stud_Age, @Stud_FPhone, @Stud_Add, @Stud_BP, @Stud_PD, @Stud_Quali, @Stud_Sax, @Type_Study)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [Stud_Name] = @Stud_Name, [Stud_Age] = @Stud_Age, [Stud_Phone] = @Stud_Phone, [Stud_FPhone] = @Stud_FPhone, [Stud_Add] = @Stud_Add, [Stud_BP] = @Stud_BP, [Stud_PD] = @Stud_PD, [Stud_Quali] = @Stud_Quali, [Stud_Sax] = @Stud_Sax, [Type_Study] = @Type_Study WHERE [Stud_ID] = @original_Stud_ID AND (([Stud_Name] = @original_Stud_Name) OR ([Stud_Name] IS NULL AND @original_Stud_Name IS NULL)) AND (([Stud_Age] = @original_Stud_Age) OR ([Stud_Age] IS NULL AND @original_Stud_Age IS NULL)) AND [Stud_Phone] = @original_Stud_Phone AND (([Stud_FPhone] = @original_Stud_FPhone) OR ([Stud_FPhone] IS NULL AND @original_Stud_FPhone IS NULL)) AND (([Stud_Add] = @original_Stud_Add) OR ([Stud_Add] IS NULL AND @original_Stud_Add IS NULL)) AND (([Stud_BP] = @original_Stud_BP) OR ([Stud_BP] IS NULL AND @original_Stud_BP IS NULL)) AND (([Stud_PD] = @original_Stud_PD) OR ([Stud_PD] IS NULL AND @original_Stud_PD IS NULL)) AND (([Stud_Quali] = @original_Stud_Quali) OR ([Stud_Quali] IS NULL AND @original_Stud_Quali IS NULL)) AND (([Stud_Sax] = @original_Stud_Sax) OR ([Stud_Sax] IS NULL AND @original_Stud_Sax IS NULL)) AND (([Type_Study] = @original_Type_Study) OR ([Type_Study] IS NULL AND @original_Type_Study IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Stud_ID" Type="Int32" />
                    <asp:Parameter Name="original_Stud_Name" Type="String" />
                    <asp:Parameter Name="original_Stud_Age" Type="Int32" />
                    <asp:Parameter Name="original_Stud_Phone" Type="Int32" />
                    <asp:Parameter Name="original_Stud_FPhone" Type="Int32" />
                    <asp:Parameter Name="original_Stud_Add" Type="String" />
                    <asp:Parameter Name="original_Stud_BP" Type="String" />
                    <asp:Parameter Name="original_Stud_PD" Type="String" />
                    <asp:Parameter Name="original_Stud_Quali" Type="String" />
                    <asp:Parameter Name="original_Stud_Sax" Type="String" />
                    <asp:Parameter Name="original_Type_Study" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Stud_ID" Type="Int32" />
                    <asp:Parameter Name="Stud_Name" Type="String" />
                    <asp:Parameter Name="Stud_Age" Type="Int32" />
                    <asp:Parameter Name="Stud_FPhone" Type="Int32" />
                    <asp:Parameter Name="Stud_Add" Type="String" />
                    <asp:Parameter Name="Stud_BP" Type="String" />
                    <asp:Parameter Name="Stud_PD" Type="String" />
                    <asp:Parameter Name="Stud_Quali" Type="String" />
                    <asp:Parameter Name="Stud_Sax" Type="String" />
                    <asp:Parameter Name="Type_Study" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Stud_Name" Type="String" />
                    <asp:Parameter Name="Stud_Age" Type="Int32" />
                    <asp:Parameter Name="Stud_Phone" Type="Int32" />
                    <asp:Parameter Name="Stud_FPhone" Type="Int32" />
                    <asp:Parameter Name="Stud_Add" Type="String" />
                    <asp:Parameter Name="Stud_BP" Type="String" />
                    <asp:Parameter Name="Stud_PD" Type="String" />
                    <asp:Parameter Name="Stud_Quali" Type="String" />
                    <asp:Parameter Name="Stud_Sax" Type="String" />
                    <asp:Parameter Name="Type_Study" Type="String" />
                    <asp:Parameter Name="original_Stud_ID" Type="Int32" />
                    <asp:Parameter Name="original_Stud_Name" Type="String" />
                    <asp:Parameter Name="original_Stud_Age" Type="Int32" />
                    <asp:Parameter Name="original_Stud_Phone" Type="Int32" />
                    <asp:Parameter Name="original_Stud_FPhone" Type="Int32" />
                    <asp:Parameter Name="original_Stud_Add" Type="String" />
                    <asp:Parameter Name="original_Stud_BP" Type="String" />
                    <asp:Parameter Name="original_Stud_PD" Type="String" />
                    <asp:Parameter Name="original_Stud_Quali" Type="String" />
                    <asp:Parameter Name="original_Stud_Sax" Type="String" />
                    <asp:Parameter Name="original_Type_Study" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
         </div>
                <asp:Button ID="btnBack" CssClass="btnBack" runat="server" Text="رجوع الى الرئيسية"  PostBackUrl="~/My Page/Student Managment.aspx" />


</form>
</asp:Content>

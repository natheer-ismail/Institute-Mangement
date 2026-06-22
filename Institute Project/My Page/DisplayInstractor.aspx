<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="DisplayInstractor.aspx.cs" Inherits="Institute_Project.My_Page.DisplayInstractor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <h1>بيانات المدربين</h1>

        <div id="Display"> 
            
                   
         <div class="SearchBox" runat="server">
            <asp:Button ID="Button1" runat="server" Text="بحث" CssClass="btnSearch" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxSearch"></asp:TextBox>
            <i class="fa-solid fa-magnifying-glass"></i>
        </div>

           
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Instractor]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Instractor] WHERE [Instr_ID] = @original_Instr_ID AND (([Instr_Name] = @original_Instr_Name) OR ([Instr_Name] IS NULL AND @original_Instr_Name IS NULL)) AND (([Instr_Specialization] = @original_Instr_Specialization) OR ([Instr_Specialization] IS NULL AND @original_Instr_Specialization IS NULL)) AND (([instr_ID_Number] = @original_instr_ID_Number) OR ([instr_ID_Number] IS NULL AND @original_instr_ID_Number IS NULL)) AND (([Instr_Address] = @original_Instr_Address) OR ([Instr_Address] IS NULL AND @original_Instr_Address IS NULL)) AND (([Instr_Phone] = @original_Instr_Phone) OR ([Instr_Phone] IS NULL AND @original_Instr_Phone IS NULL)) AND (([Instr_Sallary] = @original_Instr_Sallary) OR ([Instr_Sallary] IS NULL AND @original_Instr_Sallary IS NULL)) AND (([Instr_Sax] = @original_Instr_Sax) OR ([Instr_Sax] IS NULL AND @original_Instr_Sax IS NULL)) AND (([Instr_HireDate] = @original_Instr_HireDate) OR ([Instr_HireDate] IS NULL AND @original_Instr_HireDate IS NULL)) AND (([Dept_ID] = @original_Dept_ID) OR ([Dept_ID] IS NULL AND @original_Dept_ID IS NULL))" InsertCommand="INSERT INTO [Instractor] ([Instr_Name], [Instr_Specialization], [instr_ID_Number], [Instr_Address], [Instr_Phone], [Instr_Sallary], [Instr_Sax], [Instr_HireDate], [Dept_ID]) VALUES (@Instr_Name, @Instr_Specialization, @instr_ID_Number, @Instr_Address, @Instr_Phone, @Instr_Sallary, @Instr_Sax, @Instr_HireDate, @Dept_ID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Instractor] SET [Instr_Name] = @Instr_Name, [Instr_Specialization] = @Instr_Specialization, [instr_ID_Number] = @instr_ID_Number, [Instr_Address] = @Instr_Address, [Instr_Phone] = @Instr_Phone, [Instr_Sallary] = @Instr_Sallary, [Instr_Sax] = @Instr_Sax, [Instr_HireDate] = @Instr_HireDate, [Dept_ID] = @Dept_ID WHERE [Instr_ID] = @original_Instr_ID AND (([Instr_Name] = @original_Instr_Name) OR ([Instr_Name] IS NULL AND @original_Instr_Name IS NULL)) AND (([Instr_Specialization] = @original_Instr_Specialization) OR ([Instr_Specialization] IS NULL AND @original_Instr_Specialization IS NULL)) AND (([instr_ID_Number] = @original_instr_ID_Number) OR ([instr_ID_Number] IS NULL AND @original_instr_ID_Number IS NULL)) AND (([Instr_Address] = @original_Instr_Address) OR ([Instr_Address] IS NULL AND @original_Instr_Address IS NULL)) AND (([Instr_Phone] = @original_Instr_Phone) OR ([Instr_Phone] IS NULL AND @original_Instr_Phone IS NULL)) AND (([Instr_Sallary] = @original_Instr_Sallary) OR ([Instr_Sallary] IS NULL AND @original_Instr_Sallary IS NULL)) AND (([Instr_Sax] = @original_Instr_Sax) OR ([Instr_Sax] IS NULL AND @original_Instr_Sax IS NULL)) AND (([Instr_HireDate] = @original_Instr_HireDate) OR ([Instr_HireDate] IS NULL AND @original_Instr_HireDate IS NULL)) AND (([Dept_ID] = @original_Dept_ID) OR ([Dept_ID] IS NULL AND @original_Dept_ID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Instr_ID" Type="Int32" />
                        <asp:Parameter Name="original_Instr_Name" Type="String" />
                        <asp:Parameter Name="original_Instr_Specialization" Type="String" />
                        <asp:Parameter Name="original_instr_ID_Number" Type="Int32" />
                        <asp:Parameter Name="original_Instr_Address" Type="String" />
                        <asp:Parameter Name="original_Instr_Phone" Type="Int32" />
                        <asp:Parameter Name="original_Instr_Sallary" Type="Int32" />
                        <asp:Parameter Name="original_Instr_Sax" Type="String" />
                        <asp:Parameter Name="original_Instr_HireDate" Type="String" />
                        <asp:Parameter Name="original_Dept_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Instr_Name" Type="String" />
                        <asp:Parameter Name="Instr_Specialization" Type="String" />
                        <asp:Parameter Name="instr_ID_Number" Type="Int32" />
                        <asp:Parameter Name="Instr_Address" Type="String" />
                        <asp:Parameter Name="Instr_Phone" Type="Int32" />
                        <asp:Parameter Name="Instr_Sallary" Type="Int32" />
                        <asp:Parameter Name="Instr_Sax" Type="String" />
                        <asp:Parameter Name="Instr_HireDate" Type="String" />
                        <asp:Parameter Name="Dept_ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Instr_Name" Type="String" />
                        <asp:Parameter Name="Instr_Specialization" Type="String" />
                        <asp:Parameter Name="instr_ID_Number" Type="Int32" />
                        <asp:Parameter Name="Instr_Address" Type="String" />
                        <asp:Parameter Name="Instr_Phone" Type="Int32" />
                        <asp:Parameter Name="Instr_Sallary" Type="Int32" />
                        <asp:Parameter Name="Instr_Sax" Type="String" />
                        <asp:Parameter Name="Instr_HireDate" Type="String" />
                        <asp:Parameter Name="Dept_ID" Type="Int32" />
                        <asp:Parameter Name="original_Instr_ID" Type="Int32" />
                        <asp:Parameter Name="original_Instr_Name" Type="String" />
                        <asp:Parameter Name="original_Instr_Specialization" Type="String" />
                        <asp:Parameter Name="original_instr_ID_Number" Type="Int32" />
                        <asp:Parameter Name="original_Instr_Address" Type="String" />
                        <asp:Parameter Name="original_Instr_Phone" Type="Int32" />
                        <asp:Parameter Name="original_Instr_Sallary" Type="Int32" />
                        <asp:Parameter Name="original_Instr_Sax" Type="String" />
                        <asp:Parameter Name="original_Instr_HireDate" Type="String" />
                        <asp:Parameter Name="original_Dept_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="DisplayStudent" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" GridLines="Both" Font-Bold="True" Height="150px" DataKeyNames="Instr_ID" ForeColor="#333333" HorizontalAlign="Center" >
                <AlternatingRowStyle BackColor="White" BorderColor="#FF0066" />
                <Columns>
                    <asp:BoundField DataField="Instr_ID" HeaderText="Instr_ID" SortExpression="Instr_ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Instr_Name" HeaderText="Instr_Name" SortExpression="Instr_Name" />
                    <asp:BoundField DataField="Instr_Specialization" HeaderText="Instr_Specialization" SortExpression="Instr_Specialization" />
                    <asp:BoundField DataField="instr_ID_Number" HeaderText="instr_ID_Number" SortExpression="instr_ID_Number" />
                    <asp:BoundField DataField="Instr_Address" HeaderText="Instr_Address" SortExpression="Instr_Address" />
                    <asp:BoundField DataField="Instr_Phone" HeaderText="Instr_Phone" SortExpression="Instr_Phone" />
                    <asp:BoundField DataField="Instr_Sallary" HeaderText="Instr_Sallary" SortExpression="Instr_Sallary" />
                    <asp:BoundField DataField="Instr_Sax" HeaderText="Instr_Sax" SortExpression="Instr_Sax" />
                    <asp:BoundField DataField="Instr_HireDate" HeaderText="Instr_HireDate" SortExpression="Instr_HireDate" />
                    <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
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
                    <EditRowStyle BackColor="#7C6F57" HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
         </div>
                <asp:Button ID="btnBack" CssClass="btnBack" runat="server" Text="رجوع الى الرئيسية"  PostBackUrl="~/My Page/Trainer Managment.aspx" />


</form>
</asp:Content>

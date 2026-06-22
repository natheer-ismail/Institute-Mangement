<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="DisplayDepartment.aspx.cs" Inherits="Institute_Project.My_Page.DisplayDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

    <h1> بيانات الاقسام</h1>
    <div id="Display">

        
                   
         <div class="SearchBox" runat="server">
            <asp:Button ID="Button1" runat="server" Text="بحث" CssClass="btnSearch" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxSearch"></asp:TextBox>
            <i class="fa-solid fa-magnifying-glass"></i>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [Dept_ID] = @original_Dept_ID AND (([Dept_Name] = @original_Dept_Name) OR ([Dept_Name] IS NULL AND @original_Dept_Name IS NULL)) AND (([Dept_State] = @original_Dept_State) OR ([Dept_State] IS NULL AND @original_Dept_State IS NULL))" InsertCommand="INSERT INTO [Department] ([Dept_Name], [Dept_State]) VALUES (@Dept_Name, @Dept_State)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [Dept_Name] = @Dept_Name, [Dept_State] = @Dept_State WHERE [Dept_ID] = @original_Dept_ID AND (([Dept_Name] = @original_Dept_Name) OR ([Dept_Name] IS NULL AND @original_Dept_Name IS NULL)) AND (([Dept_State] = @original_Dept_State) OR ([Dept_State] IS NULL AND @original_Dept_State IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Dept_ID" Type="Int32" />
                <asp:Parameter Name="original_Dept_Name" Type="String" />
                <asp:Parameter Name="original_Dept_State" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Dept_Name" Type="String" />
                <asp:Parameter Name="Dept_State" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Dept_Name" Type="String" />
                <asp:Parameter Name="Dept_State" Type="String" />
                <asp:Parameter Name="original_Dept_ID" Type="Int32" />
                <asp:Parameter Name="original_Dept_Name" Type="String" />
                <asp:Parameter Name="original_Dept_State" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  width="100%"  CellPadding="8" Font-Bold="True" Height="150px"  DataKeyNames="Dept_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center" GridLines="Both" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                <asp:BoundField DataField="Dept_State" HeaderText="Dept_State" SortExpression="Dept_State" />

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
    </div>
                <asp:Button ID="btnBack" CssClass="btnBack" runat="server" Text="رجوع الى الرئيسية"  PostBackUrl="~/My Page/DepartMent Managment.aspx" />

        </form>

</asp:Content>


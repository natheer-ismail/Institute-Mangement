<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="DisplayCourses.aspx.cs" Inherits="Institute_Project.My_Page.DisplayCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">


    <h1>بيانات الكورسات</h1>


    <div id="Display" >

                    
         <div class="SearchBox" runat="server">
            <asp:Button ID="Button1" runat="server" Text="بحث" CssClass="btnSearch" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxSearch"></asp:TextBox>
            <i class="fa-solid fa-magnifying-glass"></i>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Courses] WHERE [Course_ID] = @original_Course_ID AND (([Course_Name] = @original_Course_Name) OR ([Course_Name] IS NULL AND @original_Course_Name IS NULL)) AND (([Course_Duration] = @original_Course_Duration) OR ([Course_Duration] IS NULL AND @original_Course_Duration IS NULL)) AND (([Course_Cost] = @original_Course_Cost) OR ([Course_Cost] IS NULL AND @original_Course_Cost IS NULL)) AND (([Course_Time] = @original_Course_Time) OR ([Course_Time] IS NULL AND @original_Course_Time IS NULL)) AND (([Course_Start] = @original_Course_Start) OR ([Course_Start] IS NULL AND @original_Course_Start IS NULL)) AND (([Instr_ID] = @original_Instr_ID) OR ([Instr_ID] IS NULL AND @original_Instr_ID IS NULL)) AND (([Dipl_ID] = @original_Dipl_ID) OR ([Dipl_ID] IS NULL AND @original_Dipl_ID IS NULL))" InsertCommand="INSERT INTO [Courses] ([Course_Name], [Course_Duration], [Course_Cost], [Course_Time], [Course_Start], [Instr_ID], [Dipl_ID]) VALUES (@Course_Name, @Course_Duration, @Course_Cost, @Course_Time, @Course_Start, @Instr_ID, @Dipl_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Courses]" UpdateCommand="UPDATE [Courses] SET [Course_Name] = @Course_Name, [Course_Duration] = @Course_Duration, [Course_Cost] = @Course_Cost, [Course_Time] = @Course_Time, [Course_Start] = @Course_Start, [Instr_ID] = @Instr_ID, [Dipl_ID] = @Dipl_ID WHERE [Course_ID] = @original_Course_ID AND (([Course_Name] = @original_Course_Name) OR ([Course_Name] IS NULL AND @original_Course_Name IS NULL)) AND (([Course_Duration] = @original_Course_Duration) OR ([Course_Duration] IS NULL AND @original_Course_Duration IS NULL)) AND (([Course_Cost] = @original_Course_Cost) OR ([Course_Cost] IS NULL AND @original_Course_Cost IS NULL)) AND (([Course_Time] = @original_Course_Time) OR ([Course_Time] IS NULL AND @original_Course_Time IS NULL)) AND (([Course_Start] = @original_Course_Start) OR ([Course_Start] IS NULL AND @original_Course_Start IS NULL)) AND (([Instr_ID] = @original_Instr_ID) OR ([Instr_ID] IS NULL AND @original_Instr_ID IS NULL)) AND (([Dipl_ID] = @original_Dipl_ID) OR ([Dipl_ID] IS NULL AND @original_Dipl_ID IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Course_ID" Type="Int32" />
                <asp:Parameter Name="original_Course_Name" Type="String" />
                <asp:Parameter Name="original_Course_Duration" Type="String" />
                <asp:Parameter Name="original_Course_Cost" Type="Int32" />
                <asp:Parameter Name="original_Course_Time" Type="String" />
                <asp:Parameter Name="original_Course_Start" Type="String" />
                <asp:Parameter Name="original_Instr_ID" Type="Int32" />
                <asp:Parameter Name="original_Dipl_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Course_Name" Type="String" />
                <asp:Parameter Name="Course_Duration" Type="String" />
                <asp:Parameter Name="Course_Cost" Type="Int32" />
                <asp:Parameter Name="Course_Time" Type="String" />
                <asp:Parameter Name="Course_Start" Type="String" />
                <asp:Parameter Name="Instr_ID" Type="Int32" />
                <asp:Parameter Name="Dipl_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Course_Name" Type="String" />
                <asp:Parameter Name="Course_Duration" Type="String" />
                <asp:Parameter Name="Course_Cost" Type="Int32" />
                <asp:Parameter Name="Course_Time" Type="String" />
                <asp:Parameter Name="Course_Start" Type="String" />
                <asp:Parameter Name="Instr_ID" Type="Int32" />
                <asp:Parameter Name="Dipl_ID" Type="Int32" />
                <asp:Parameter Name="original_Course_ID" Type="Int32" />
                <asp:Parameter Name="original_Course_Name" Type="String" />
                <asp:Parameter Name="original_Course_Duration" Type="String" />
                <asp:Parameter Name="original_Course_Cost" Type="Int32" />
                <asp:Parameter Name="original_Course_Time" Type="String" />
                <asp:Parameter Name="original_Course_Start" Type="String" />
                <asp:Parameter Name="original_Instr_ID" Type="Int32" />
                <asp:Parameter Name="original_Dipl_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  width="100%"  CellPadding="8" Font-Bold="True" Height="150px" DataKeyNames="Course_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center" GridLines="Both" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Course_ID" HeaderText="Course_ID" InsertVisible="False" ReadOnly="True" SortExpression="Course_ID" />
                <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" SortExpression="Course_Name" />
                <asp:BoundField DataField="Course_Duration" HeaderText="Course_Duration" SortExpression="Course_Duration" />
                <asp:BoundField DataField="Course_Cost" HeaderText="Course_Cost" SortExpression="Course_Cost" />
                <asp:BoundField DataField="Course_Time" HeaderText="Course_Time" SortExpression="Course_Time" />
                <asp:BoundField DataField="Course_Start" HeaderText="Course_Start" SortExpression="Course_Start" />

                <asp:BoundField DataField="Instr_ID" HeaderText="Instr_ID" SortExpression="Instr_ID" />
                <asp:BoundField DataField="Dipl_ID" HeaderText="Dipl_ID" SortExpression="Dipl_ID" />

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
        <asp:Button ID="btnBack" CssClass="btnBack" runat="server" Text="رجوع الى الرئيسية"  PostBackUrl="~/My Page/Courses Managment.aspx" />
        </form>

</asp:Content>


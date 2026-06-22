<%@ Page Title="" Language="C#" MasterPageFile="~/My Page/MyMaserPage.Master" AutoEventWireup="true" CodeBehind="DisplayDiploma.aspx.cs" Inherits="Institute_Project.My_Page.DisplayDiploma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

    <h1>بيانات الدبلومات</h1>
    <div id="Display">

                    
         <div class="SearchBox" runat="server">
            <asp:Button ID="Button1" runat="server" Text="بحث" CssClass="btnSearch" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxSearch"></asp:TextBox>
            <i class="fa-solid fa-magnifying-glass"></i>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Diploma] WHERE [Dipl_ID] = @original_Dipl_ID AND (([Dipl_Name] = @original_Dipl_Name) OR ([Dipl_Name] IS NULL AND @original_Dipl_Name IS NULL)) AND (([Dipl_Cost] = @original_Dipl_Cost) OR ([Dipl_Cost] IS NULL AND @original_Dipl_Cost IS NULL)) AND (([Dipl_Duration] = @original_Dipl_Duration) OR ([Dipl_Duration] IS NULL AND @original_Dipl_Duration IS NULL)) AND (([Dipl_Time] = @original_Dipl_Time) OR ([Dipl_Time] IS NULL AND @original_Dipl_Time IS NULL)) AND (([Dept_ID] = @original_Dept_ID) OR ([Dept_ID] IS NULL AND @original_Dept_ID IS NULL))" InsertCommand="INSERT INTO [Diploma] ([Dipl_Name], [Dipl_Cost], [Dipl_Duration], [Dipl_Time], [Dept_ID]) VALUES (@Dipl_Name, @Dipl_Cost, @Dipl_Duration, @Dipl_Time, @Dept_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Diploma]" UpdateCommand="UPDATE [Diploma] SET [Dipl_Name] = @Dipl_Name, [Dipl_Cost] = @Dipl_Cost, [Dipl_Duration] = @Dipl_Duration, [Dipl_Time] = @Dipl_Time, [Dept_ID] = @Dept_ID WHERE [Dipl_ID] = @original_Dipl_ID AND (([Dipl_Name] = @original_Dipl_Name) OR ([Dipl_Name] IS NULL AND @original_Dipl_Name IS NULL)) AND (([Dipl_Cost] = @original_Dipl_Cost) OR ([Dipl_Cost] IS NULL AND @original_Dipl_Cost IS NULL)) AND (([Dipl_Duration] = @original_Dipl_Duration) OR ([Dipl_Duration] IS NULL AND @original_Dipl_Duration IS NULL)) AND (([Dipl_Time] = @original_Dipl_Time) OR ([Dipl_Time] IS NULL AND @original_Dipl_Time IS NULL)) AND (([Dept_ID] = @original_Dept_ID) OR ([Dept_ID] IS NULL AND @original_Dept_ID IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Dipl_ID" Type="Int32" />
                <asp:Parameter Name="original_Dipl_Name" Type="String" />
                <asp:Parameter Name="original_Dipl_Cost" Type="Int32" />
                <asp:Parameter Name="original_Dipl_Duration" Type="String" />
                <asp:Parameter Name="original_Dipl_Time" Type="String" />
                <asp:Parameter Name="original_Dept_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Dipl_Name" Type="String" />
                <asp:Parameter Name="Dipl_Cost" Type="Int32" />
                <asp:Parameter Name="Dipl_Duration" Type="String" />
                <asp:Parameter Name="Dipl_Time" Type="String" />
                <asp:Parameter Name="Dept_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Dipl_Name" Type="String" />
                <asp:Parameter Name="Dipl_Cost" Type="Int32" />
                <asp:Parameter Name="Dipl_Duration" Type="String" />
                <asp:Parameter Name="Dipl_Time" Type="String" />
                <asp:Parameter Name="Dept_ID" Type="Int32" />
                <asp:Parameter Name="original_Dipl_ID" Type="Int32" />
                <asp:Parameter Name="original_Dipl_Name" Type="String" />
                <asp:Parameter Name="original_Dipl_Cost" Type="Int32" />
                <asp:Parameter Name="original_Dipl_Duration" Type="String" />
                <asp:Parameter Name="original_Dipl_Time" Type="String" />
                <asp:Parameter Name="original_Dept_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  width="100%"  CellPadding="4" GridLines="Both" Font-Bold="True" Height="150px" DataKeyNames="Dipl_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Dipl_ID" HeaderText="Dipl_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dipl_ID" />
                <asp:BoundField DataField="Dipl_Name" HeaderText="Dipl_Name" SortExpression="Dipl_Name" />
                <asp:BoundField DataField="Dipl_Cost" HeaderText="Dipl_Cost" SortExpression="Dipl_Cost" />
                <asp:BoundField DataField="Dipl_Duration" HeaderText="Dipl_Duration" SortExpression="Dipl_Duration" />
                <asp:BoundField DataField="Dipl_Time" HeaderText="Dipl_Time" SortExpression="Dipl_Time" />
                <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />

                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete">
                <ControlStyle CssClass="Deletebtn" />
                </asp:ButtonField>

                <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit">
                <ControlStyle CssClass="Addbtn" />
                    </asp:ButtonField>
                 
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Update" ShowHeader="True" Text="Update">
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
                <asp:Button ID="btnBack" CssClass="btnBack" runat="server" Text="رجوع الى الرئيسية"  PostBackUrl="~/My Page/Diploma Managment.aspx" />

        </form>

</asp:Content>

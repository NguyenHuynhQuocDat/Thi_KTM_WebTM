<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tintuc.aspx.cs" Inherits="Bài_thi_ASP.NET.Tintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Themes/styles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TIN_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
            <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
            <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
            <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" SortExpression="TGIA_ID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Tin TứcConnectionString %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [TIN_ID] = @TIN_ID" InsertCommand="INSERT INTO [TINTUC] ([TIN_ID], [NOIDUNG], [NGAYGUI], [TGIA_ID]) VALUES (@TIN_ID, @NOIDUNG, @NGAYGUI, @TGIA_ID)" SelectCommand="SELECT [TIN_ID], [NOIDUNG], [NGAYGUI], [TGIA_ID] FROM [TINTUC]" UpdateCommand="UPDATE [TINTUC] SET [NOIDUNG] = @NOIDUNG, [NGAYGUI] = @NGAYGUI, [TGIA_ID] = @TGIA_ID WHERE [TIN_ID] = @TIN_ID">
        <DeleteParameters>
            <asp:Parameter Name="TIN_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TIN_ID" Type="Int32" />
            <asp:Parameter Name="NOIDUNG" Type="String" />
            <asp:Parameter Name="NGAYGUI" Type="DateTime" />
            <asp:Parameter Name="TGIA_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOIDUNG" Type="String" />
            <asp:Parameter Name="NGAYGUI" Type="DateTime" />
            <asp:Parameter Name="TGIA_ID" Type="Int32" />
            <asp:Parameter Name="TIN_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

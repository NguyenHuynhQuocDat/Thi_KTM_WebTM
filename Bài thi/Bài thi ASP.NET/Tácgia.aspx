<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tácgia.aspx.cs" Inherits="Bài_thi_ASP.NET.Tácgia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TACGIA_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TACGIA_ID" HeaderText="TACGIA_ID" ReadOnly="True" SortExpression="TACGIA_ID" />
            <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Tin TứcConnectionString1 %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TACGIA_ID] = @TACGIA_ID" InsertCommand="INSERT INTO [TACGIA] ([TACGIA_ID], [TENTG], [EMAIL]) VALUES (@TACGIA_ID, @TENTG, @EMAIL)" ProviderName="<%$ ConnectionStrings:Tin TứcConnectionString1.ProviderName %>" SelectCommand="SELECT [TACGIA_ID], [TENTG], [EMAIL] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TACGIA_ID] = @TACGIA_ID">
        <DeleteParameters>
            <asp:Parameter Name="TACGIA_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TACGIA_ID" Type="Int32" />
            <asp:Parameter Name="TENTG" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENTG" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="TACGIA_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

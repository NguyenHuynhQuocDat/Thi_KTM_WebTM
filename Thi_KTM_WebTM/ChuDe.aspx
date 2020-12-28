<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChuDe.aspx.cs" Inherits="Bài_thi_ASP.NET.ChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Themes/styles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CHUDE_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CHUDE_ID" HeaderText="CHUDE_ID" ReadOnly="True" SortExpression="CHUDE_ID" />
            <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Tin TứcConnectionString %>" DeleteCommand="DELETE FROM [CHUDE] WHERE [CHUDE_ID] = @CHUDE_ID" InsertCommand="INSERT INTO [CHUDE] ([CHUDE_ID], [TENCD]) VALUES (@CHUDE_ID, @TENCD)" SelectCommand="SELECT [CHUDE_ID], [TENCD] FROM [CHUDE]" UpdateCommand="UPDATE [CHUDE] SET [TENCD] = @TENCD WHERE [CHUDE_ID] = @CHUDE_ID">
        <DeleteParameters>
            <asp:Parameter Name="CHUDE_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CHUDE_ID" Type="Int32" />
            <asp:Parameter Name="TENCD" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENCD" Type="String" />
            <asp:Parameter Name="CHUDE_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

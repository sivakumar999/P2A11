<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="Assign11.Article" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ArticleId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ArticleId" HeaderText="ArticleId" ReadOnly="True" SortExpression="ArticleId" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
        <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ContentDBConnectionString3 %>" DeleteCommand="DELETE FROM [Articles] WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))" InsertCommand="INSERT INTO [Articles] ([ArticleId], [Title], [Content], [PublishDate]) VALUES (@ArticleId, @Title, @Content, @PublishDate)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ContentDBConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Articles]" UpdateCommand="UPDATE [Articles] SET [Title] = @Title, [Content] = @Content, [PublishDate] = @PublishDate WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ArticleId" Type="Int32" />
        <asp:Parameter Name="original_Title" Type="String" />
        <asp:Parameter Name="original_Content" Type="String" />
        <asp:Parameter Name="original_PublishDate" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ArticleId" Type="Int32" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Content" Type="String" />
        <asp:Parameter Name="PublishDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Content" Type="String" />
        <asp:Parameter Name="PublishDate" Type="DateTime" />
        <asp:Parameter Name="original_ArticleId" Type="Int32" />
        <asp:Parameter Name="original_Title" Type="String" />
        <asp:Parameter Name="original_Content" Type="String" />
        <asp:Parameter Name="original_PublishDate" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

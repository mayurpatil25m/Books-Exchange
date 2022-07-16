<%@ Page Title="" Language="C#" MasterPageFile="~/OnLogin.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Final_Book_Exchange.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Search Books </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <h1> Search Books </h1>
            <hr />
    <div class="col-lg-12">
        <asp:TextBox ID="Textsearch" placeholder="Search books " runat="server" Width="307px"></asp:TextBox>
        <asp:Button ID="Butsearch" CssClass="btn btn-success" runat="server" Text="Search" OnClick="Butsearch_Click" />
        <br />
        <br />
        <br />
        <br /> 

        <asp:GridView ID="search_GridView" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" Width="845px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        &nbsp;<asp:SqlDataSource ID="searchbook_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT [BOOK_NAME], [AUTHOR], [BOOK_SUMMARY], [BOOK_COVER] FROM [NEWBOOK]"></asp:SqlDataSource>
        <br /> 
    </div>
            </center>

    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/OnLogin.Master" AutoEventWireup="true" CodeBehind="SearchBook.aspx.cs" Inherits="Final_Book_Exchange.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Search Book</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-lg-12">
            <div class="row"> 
                <div class="col-lg-6">
                    <br /> <br />
                    <asp:DropDownList ID="Options_DropDownList" CssClass="form-control" runat="server" OnSelectedIndexChanged="Options_DropDownList_SelectedIndexChanged">                  
                        <asp:ListItem> Book Name </asp:ListItem>
                        <asp:ListItem> Author </asp:ListItem>
                        <asp:ListItem> Category </asp:ListItem>
                       
                    </asp:DropDownList>
                    <asp:Button ID="Search_Button" OnClick="Search_Button_Click" CssClass="btn btn-success" runat="server" Text="Search" />
                
                </div>

                    <div class="col-lg-6">
                        <br /> <br />
                    <asp:DropDownList ID="Bookname_DropDownList" CssClass="form-control" runat="server" DataSourceID="bookname_SqlDataSource" DataTextField="BOOK_NAME" DataValueField="SERIAL" Visible="False">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="bookname_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT [SERIAL], [BOOK_NAME] FROM [NEWBOOK] ORDER BY [BOOK_NAME]"></asp:SqlDataSource>
                    
                        <asp:DropDownList ID="Author_DropDownList" CssClass="form-control" runat="server" DataSourceID="author_SqlDataSource" DataTextField="AUTHOR" DataValueField="SERIAL" Visible="False">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="author_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT [SERIAL], [AUTHOR] FROM [NEWBOOK] ORDER BY [AUTHOR]"></asp:SqlDataSource>
                    
                        <asp:DropDownList ID="Category_DropDownList" CssClass="form-control" runat="server" DataSourceID="cateory_SqlDataSource" DataTextField="CATEGORY"  Visible="False">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="cateory_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT DISTINCT [SERIAL], [CATEGORY] FROM [NEWBOOK]"></asp:SqlDataSource>
                    <br /> <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

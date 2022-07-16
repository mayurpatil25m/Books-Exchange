<%@ Page Title="" Language="C#" MasterPageFile="~/OnLogin.Master" AutoEventWireup="true" CodeBehind="OnAddNewBook.aspx.cs" Inherits="Final_Book_Exchange.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Add Book </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="ID_label" runat="server"  Font-Italic style="color:HighlightText" Visible="false"> </asp:Label>

    <div class="container text-center">
            <h3> Add New Book</h3>
            <hr />
        </div>

        <div class="container">
            <div class="row justify-content-lg-center">
                <div class="col-lg-6"   >
                  
                    <div class="row">
                        <div class="col-lg-12">
                            <asp:TextBox ID="BookName_TextBox"  style="margin-bottom:10px" autocomplete="off" placeholder="Book Name" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-lg-6">
                            <asp:TextBox ID="Author_TextBox"  style="margin-bottom:10px" autocomplete="off" placeholder="Author" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-lg-6">
                            <asp:DropDownList ID="Category_DropDownList" CssClass="form-control" runat="server" >
                                <asp:ListItem>-- Select Category --</asp:ListItem>
                                <asp:ListItem>Business</asp:ListItem>
                                <asp:ListItem>Educational</asp:ListItem>
                                <asp:ListItem>Science</asp:ListItem>
                                <asp:ListItem>Atrs</asp:ListItem>
                                <asp:ListItem>Novel</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                         <div class="col-lg-12">
                             <asp:TextBox ID="book_summery" style="margin-bottom:10px" autocomplete="off" placeholder="Book Summery" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                         </div>

                         <div class="col-lg-12">
                             <asp:FileUpload ID="FileUpload" style="margin-bottom:10px"  runat="server" />
                        </div>

                        
                        <div class="col-lg-6">
                            <asp:Button ID="Submit_Button" OnClick="Submit_Button_Click" style="margin-bottom:10px" Width="100%" runat="server" CssClass="btn btn-success" Text="Submit" />
                        </div>

                        <div class="col-lg-6">
                           <a href="Home.aspx" class="btn btn-danger"  style="width:100%; margin-bottom:10px">Discard</a> 
                        </div>
            </div>
        </div>
                <br />
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <asp:GridView ID="Book_GridView" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="SERIAL" DataSourceID="NEWBOOK_SqlDataSource" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <Columns>
                                        <asp:BoundField DataField="SERIAL" HeaderText="SERIAL" InsertVisible="False" ReadOnly="True" SortExpression="SERIAL" />
                                        <asp:BoundField DataField="BOOK_NAME" HeaderText="BOOK_NAME" SortExpression="BOOK_NAME" />
                                        <asp:BoundField DataField="AUTHOR" HeaderText="AUTHOR" SortExpression="AUTHOR" />
                                        <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" SortExpression="CATEGORY" />
                                        <asp:BoundField DataField="NO_OF_EXCHAGE" HeaderText="NO_OF_EXCHAGE" SortExpression="NO_OF_EXCHAGE" />
                                        <asp:BoundField DataField="OWNER_ID" HeaderText="OWNER_ID" SortExpression="OWNER_ID" />
                                        <asp:BoundField DataField="BOOK_SUMMARY" HeaderText="BOOK_SUMMARY" SortExpression="BOOK_SUMMARY" />
                                        <asp:ImageField DataImageUrlField="BOOK_COVER">
                                            <ControlStyle Height="150px" Width="150px" />
                                            <ItemStyle Height="150px" Width="150px" />
                                        </asp:ImageField>
                                    </Columns>
                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="NEWBOOK_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT * FROM [NEWBOOK]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
</asp:Content>

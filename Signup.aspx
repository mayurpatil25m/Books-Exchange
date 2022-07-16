<%@ Page Title="" Language="C#" MasterPageFile="~/Book1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Final_Book_Exchange.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Sign Up </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center>
    <img src="img/logo.png" /></center>

    <div class="container text-center">
            <h3> Create Account For Book Exchange</h3>
            <hr />
        </div>

        <div class="container">
            <div class="row justify-content-lg-center">
                <div class="col-lg-6" style="background-color:white   ">
                  
                    <div class="row" style="background-color:blanchedalmond">
                        <div class="col-lg-12">
                            <asp:TextBox ID="UNAME" required="true" style="margin-bottom:10px" autocomplete="off" placeholder="Enter Your Full Name" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-lg-6">
                            <asp:TextBox ID="Email_TextBox" required="true" style="margin-bottom:10px" autocomplete="off" placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-lg-6">
                            <asp:DropDownList ID="Gender_DropDownList" CssClass="form-control" runat="server">
                                <asp:ListItem>MALE</asp:ListItem>
                                <asp:ListItem>FEMALE</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                         <div class="col-lg-6">
                            <asp:TextBox ID="Password" required="true" style="margin-bottom:10px" autocomplete="off" placeholder="Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                         <div class="col-lg-6">
                            <asp:TextBox ID="Cpassword" required="true" style="margin-bottom:10px" autocomplete="off" placeholder="Confirm Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-lg-6">
                            <asp:Button ID="Submit_Button" OnClick="Submit_Button_Click" style="margin-bottom:10px" Width="100%" runat="server" CssClass="btn btn-success" Text="Submit" />
                        </div>

                        <div class="col-lg-6">
                           <a href="Home.aspx" class="btn btn-danger"  style="width:100%; margin-bottom:10px">Discard</a> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

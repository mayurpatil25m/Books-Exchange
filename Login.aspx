<%@ Page Title="" Language="C#" MasterPageFile="~/Book1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final_Book_Exchange.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> Login </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> 
    <center><img src="img/logo.png" /></center>

    <div class="container text-center">
            <h3> User Login</h3>
            <hr />
        </div>

        <div class="container">
            <div class="row justify-content-lg-center" style="background-color:blanchedalmond">
                <div class="col-lg-6"   ">
                  
                    <div class="row">

                        <div class="col-lg-12">
                            <asp:TextBox ID="Email_TextBox" required="true" style="margin-bottom:10px" autocomplete="off" placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                       

                         <div class="col-lg-12">
                            <asp:TextBox ID="Password_TextBox" required="true" style="margin-bottom:10px" autocomplete="off" placeholder="Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        

                        <div class="col-lg-6">
                            <asp:Button ID="Submit_Button" OnClick="Submit_Button_Click" style="margin-bottom:10px" Width="100%" runat="server" CssClass="btn btn-success" Text="Login" />
                        </div>

                        <div class="col-lg-6">
                           <a href="Home.aspx" class="btn btn-danger"  style="width:100%; margin-bottom:10px">Discard</a> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

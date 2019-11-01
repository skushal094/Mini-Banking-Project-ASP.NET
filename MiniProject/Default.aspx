<%@ Page Title="" Language="C#" CodeBehind="Default.aspx.cs" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="MiniProject.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Welcome</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    <div class="col-md-4 col-sm-4 col-xs-12 form-container">
        <h2>Login Form</h2>
        <div class="form-group">
            <label for="TextBox1">Email address</label>
            <asp:TextBox required="true" ID="TextBox1" runat="server" CssClass="form-control" type="email" placeholder="Enter email"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox2">Password</label>
            <asp:TextBox required="true" ID="TextBox2" runat="server" type="password" CssClass="form-control" placeholder="Password"></asp:TextBox>
        </div>
        <asp:Button type="submit" ID="Button1" runat="server" Text="Login" CssClass="btn btn-success btn-block" OnClick="Button1_Click" />
    </div>
</asp:Content>

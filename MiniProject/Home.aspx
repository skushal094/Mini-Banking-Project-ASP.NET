<%@ Page Title="" Language="C#" CodeBehind="Home.aspx.cs" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="MiniProject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Banking Portal</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 col-sm-12 col-xs-12 home-controller-1">
        <asp:Button runat="server" CssClass="btn btn-primary btn-success float-right" Text="Log Out" OnClick="Unnamed1_Click" />
    </div>
    <div class="col-md-12 col-sm-12 col-xs-12 home-controller-2">
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" CodeBehind="Home.aspx.cs" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="MiniProject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Banking Portal</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 col-sm-12 col-xs-12 home-controller-1">
        <asp:Button runat="server" CssClass="btn btn-primary btn-success float-right" Text="Log Out" OnClick="Unnamed1_Click" />
    </div>
    <div class="col-md-12 col-sm-12 col-xs-12 home-controller-2">
        <div class="col-md-4 col-sm-4 col-xs-12 form-container-2">
            <h2>Account Details</h2>
            <div>
                <label for="balance">Available balance</label>
                <h3>$<asp:Label ID="balance" runat="server" Text="0"></asp:Label></h3>
            </div>
            <div class="form-group two-buttons">
                <asp:Button runat="server" Text="Withdraw" CssClass="btn btn-primary btn-success float-left" OnClick="Button1_Click" />
                <asp:Button runat="server" CssClass="btn btn-primary btn-success float-right" Text="Deposit" OnClick="Unnamed3_Click" />
            </div>
        </div>
    </div>
</asp:Content>

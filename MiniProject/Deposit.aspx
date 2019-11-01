<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="MiniProject.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Banking Portal</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 col-sm-12 col-xs-12 home-controller-1">
        <asp:Button runat="server" CssClass="btn btn-primary btn-success float-right" Text="Log Out" OnClick="Unnamed1_Click" />
    </div>
    <div class="col-md-12 col-sm-12 col-xs-12 home-controller-2">
        <div class="col-md-4 col-sm-4 col-xs-12 form-container-2">
            <h2>Deposit Money</h2>
            <div>
                <label for="balance">Available balance</label>
                <h3>$<asp:Label ID="myBalance" runat="server" Text="0"></asp:Label></h3>
            </div>
            <div class="form-group">
                <label for="TextBox1">Money to be deposited</label>
                <asp:TextBox required="true" ID="TextBox1" Text="0" runat="server" CssClass="form-control" type="number" placeholder="Enter value"></asp:TextBox>
            </div>
            <div class="form-group two-buttons">
                <asp:Button runat="server" CssClass="form-control btn btn-primary btn-success float-left" Text="Deposit" OnClick="Unnamed2_Click" />
            </div>
        </div>
    </div>
</asp:Content>

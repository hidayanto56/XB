<%@ Page Title="Login" Language="C#" MasterPageFile="~/Account/Acc.Master" AutoEventWireup="true" CodeBehind="Mylog.aspx.cs" Inherits="XB.Account.Mylog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="true"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
</asp:Content>

<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="XB.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contact Us</h2><hr />
    <p>
    If you want to ask something, or find a bug(s) on this site, please fill the form bellow and send to our admins. 
    </p>
        <asp:Table ID="Table1" runat="server">
        <%--Name--%>
        <asp:TableRow>
            <asp:TableCell>Name</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtName" runat="server" Columns="50"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Email</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail" runat="server" Columns="50"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Subject
            </asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlSubject" runat="server">
                    <asp:ListItem>Ask a question</asp:ListItem>
                    <asp:ListItem>Report a bug</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell VerticalAlign="Top">
                Message
            </asp:TableCell>
            <asp:TableCell VerticalAlign="Top">:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMessage" runat="server" Columns="40" Rows="6" TextMode="MultiLine"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClick="btnSubmit_Click" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow >
            <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>

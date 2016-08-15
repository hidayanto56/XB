<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Acc.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="XB.Account.Profile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell Enabled="true">NPM</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="tbNPM" Enabled="false" runat="server" ValidateRequestMode="Enabled" ValidationGroup="val"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                *
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="NPM tidak boleh kosong." ToolTip="NPM tidak boleh kosong."
                    ValidationGroup="val" ControlToValidate="tbNPM"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Nama Lengkap</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="tbNamaLengkap" Enabled="false" runat="server" ValidateRequestMode="Enabled" ValidationGroup="val"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                *
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Nama tidak boleh kosong." ToolTip="Nama tidak boleh kosong."
                    ValidationGroup="val" ControlToValidate="tbNamaLengkap"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tempat Lahir</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="tbTempatLahir" runat="server" ValidateRequestMode="Enabled" ValidationGroup="val"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                *
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="Tempat Lahir tidak boleh kosong." ToolTip="Tempat Lahir tidak boleh kosong."
                    ValidationGroup="val" ControlToValidate="tbTempatLahir"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tanggal Lahir</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="tbTanggalLahir" runat="server" ValidateRequestMode="Enabled" ValidationGroup="val"
                    TextMode="DateTime" Text=""></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <ajaxToolkit:CalendarExtender ID="ceTanggalLahir" runat="server" ValidateRequestMode="Enabled"
                    TargetControlID="tbTanggalLahir" Format="dd/MM/yyyy" />
            </asp:TableCell>
            <asp:TableCell>
                *
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ErrorMessage="Tanggal lahir tidak boleh kosong." ToolTip="Tanggal lahir tidak boleh kosong."
                    ValidationGroup="val" ControlToValidate="tbTanggalLahir"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>
            <asp:TableCell>Alamat</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="tbAlamat" runat="server" ValidateRequestMode="Enabled" ValidationGroup="val"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                *
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                    ErrorMessage="Alamt tidak boleh kosong." ToolTip="Alamat tidak boleh kosong."
                    ValidationGroup="val" ControlToValidate="tbNPM"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Telp</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="tbNoTelp" runat="server" ValidateRequestMode="Enabled" ValidationGroup="val"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                *
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ErrorMessage="Nomor tidak boleh kosong." ToolTip="Nomor tidak boleh kosong."
                    ValidationGroup="val" ControlToValidate="tbNoTelp"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Email</asp:TableCell>
            <asp:TableCell>:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="tbEmail" runat="server" ValidateRequestMode="Enabled" ValidationGroup="val"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                *
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                    ErrorMessage="Email tidak boleh kosong." ToolTip="Email tidak boleh kosong."
                    ValidationGroup="val" ControlToValidate="tbEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ErrorMessage="Email tidak valid." ToolTip="Email tidak valid."
                    ValidationGroup="val" ControlToValidate="tbEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>

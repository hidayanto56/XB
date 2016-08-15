<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="XB.Admin.Profile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="content">
        <article class="module">
            <header>
                <h3>
                    <asp:Label ID="lblHeader" runat="server" Text=""></asp:Label>
                </h3>
            </header>
            <div class="module_content">


                <asp:Table ID="Table1" runat="server" CssClass="table">
                    <asp:TableRow CssClass="rows">
                        <asp:TableCell CssClass="cells1">NPM</asp:TableCell>
                        <asp:TableCell CssClass="cells2">:</asp:TableCell>
                        <asp:TableCell CssClass="cells3">
                            <asp:Label ID="lblNPM" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="rows">
                        <asp:TableCell CssClass="cells1">Nama</asp:TableCell>
                        <asp:TableCell CssClass="cells2">:</asp:TableCell>
                        <asp:TableCell CssClass="cells3">
                            <asp:Label ID="lblNama" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="rows">
                        <asp:TableCell CssClass="cells1">Tempat Lahir</asp:TableCell>
                        <asp:TableCell CssClass="cells2">:</asp:TableCell>
                        <asp:TableCell CssClass="cells3">
                            <asp:Label ID="lblTempat" runat="server" Text="" Visible="true" AssociatedControlID="lblTempat"><%#Eval("Tempat_Lahir") %></asp:Label>
                            <asp:TextBox ID="txtTempat" runat="server" Visible="false" CssClass="textBox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tempat lahir Kosong." ToolTip="Tidak boleh kosong."
                                ControlToValidate="txtTempat" ValidationGroup="val" ValidateRequestMode="Enabled" ForeColor="Red">*</asp:RequiredFieldValidator>

                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="rows">
                        <asp:TableCell CssClass="cells1">Tanggal Lahir</asp:TableCell>
                        <asp:TableCell CssClass="cells2">:</asp:TableCell>
                        <asp:TableCell CssClass="cells3">
                            <asp:Label ID="lblTanggal" runat="server" Text="" Visible="true" ><%# Eval("Tanggal_Lahir") %></asp:Label>
                            <asp:TextBox ID="txtTanggal" runat="server" Visible="false" CssClass="textBox" TextMode="Date"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtTanggal"
                                Animated="true" ClearTime="true" Format="dd/MM/yyyy" DefaultView="Years" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tanggal Lahir Kosong."
                                Display="Static" ControlToValidate="txtTanggal" ValidationGroup="val" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="rows">
                        <asp:TableCell CssClass="cells1">Alamat</asp:TableCell>
                        <asp:TableCell CssClass="cells2">:</asp:TableCell>
                        <asp:TableCell CssClass="cells3">
                            <asp:Label ID="lblAlamat" runat="server" Text="" Visible="true"><%#Eval("Alamat") %></asp:Label>
                            <asp:TextBox ID="txtAlamat" runat="server" Visible="false" CssClass="textBox" Rows="5" Columns="30" Height="80px" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="val" ControlToValidate="txtAlamat" ForeColor="Red">*</asp:RequiredFieldValidator>

                        </asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow CssClass="rows">
                        <asp:TableCell CssClass="cells1">Telp</asp:TableCell>
                        <asp:TableCell CssClass="cells2">:</asp:TableCell>
                        <asp:TableCell CssClass="cells3">
                            <asp:Label ID="lblTelp" runat="server" Text="" Visible="true"><%#Eval("Telp") %></asp:Label>
                            <asp:TextBox ID="txtTelp" runat="server" Visible="false" CssClass="textBox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="val" ControlToValidate="txtTelp" ForeColor="Red">*</asp:RequiredFieldValidator>

                        </asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow CssClass="rows">
                        <asp:TableCell CssClass="cells1">Email</asp:TableCell>
                        <asp:TableCell CssClass="cells2">:</asp:TableCell>
                        <asp:TableCell CssClass="cells3" Font-Italic="true">
                            <asp:Label ID="lblEmail" runat="server" Text="" Visible="true"><%#Eval("Email") %></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" Visible="false" CssClass="textBox" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="val" ControlToValidate="txtEmail" ForeColor="Red">*</asp:RequiredFieldValidator>

                        </asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow CssClass="rows">
                        <asp:TableCell ColumnSpan="4">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="val" DisplayMode="BulletList" ShowSummary="true" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <table style="float: right; width: 30%; margin: 0 20px 0 0;">
                    <tr>
                        <td style="width: 200px; height: 200px; float: right; vertical-align: top; text-align: right">
                            <%--<asp:Label ID="lblFoto" runat="server" Text="Foto" CssClass="foto"></asp:Label>--%>
                            <asp:Image ID="Image1" runat="server" CssClass="foto" />

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px; float: right; vertical-align: top; text-align: right">
                            <ajaxToolkit:AsyncFileUpload ID="AsyncFileUpload1" runat="server" OnUploadedComplete="AsyncFileUpload1_UploadedComplete"
                                CompleteBackColor="YellowGreen" UploaderStyle="Modern"
                                ErrorBackColor="PaleVioletRed" Width="200px" Visible="false" />
                        </td>
                    </tr>
                </table>

                <div class="clear"></div>
                <footer>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Visible="false" Style="float: right; height: 28px; width: 80px; font-weight: bold; box-shadow: 0 1px 1px #808080; clear: both; margin: 2px 20px 0 0; text-shadow:0px 1px 0px #fff;" OnClick="btnUpdate_Click"/>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Visible="false" Style="float: right; margin: 2px 20px 0 0; width: 80px; height: 28px; box-shadow: 0 1px 1px #808080; font-weight: bold; text-shadow:0px 1px 0px #fff;" OnClick="btnCancel_Click" />
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btnEdit" Visible="true" OnClick="btnEdit_Click" Style=" text-shadow:0px 1px 0px #fff; box-shadow: 0 1px 1px #808080; font-weight: bold; "/>
                </footer>

            </div>
        </article>

    </div>
</asp:Content>

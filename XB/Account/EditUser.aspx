<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Acc.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="XB.Account.EditUser" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {}
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="369px">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table style="font-size:100%;width:369px;">
                        <tr>
                            <td align="center" colspan="2">Sign Up for Your New Account</td>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="auto-style1">Username</td>
                            <td class="auto-style1">
                                &nbsp;<asp:Label ID="UserName" runat="server" Text="Label"></asp:Label>
                                &nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1" rowspan="5">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="auto-style1">NPM</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1">Foto</td>
                        </tr>
                        <tr>
                            <td align="right" class="auto-style1">Nama</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">Tempat Lahir</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="auto-style1">Tanggal Lahir</td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">Alamat</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td rowspan="3">
                                <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="auto-style2">Telp</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>
                            <td align="right">Email</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                            <td align="center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                            <td align="center" style="color:Red;">&nbsp;</td>
                            <td align="center" style="color:Red;">&nbsp;</td>
                            <td align="center" style="color:Red;">&nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

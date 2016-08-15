<%@ Page Title="New Article" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NewArticle.aspx.cs" Inherits="XB.Admin.NewArticle" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="content">
        <article class="module">
            <header>
                <h3>
                    <asp:Label ID="lblHeader" runat="server" Text="Post new article"></asp:Label>
                </h3>
            </header>
            <div class="module_content">
                <asp:Panel ID="Panel1" runat="server" CssClass="panel">
                    <asp:Label ID="lblTitle" runat="server" Text="Title" CssClass="label_content"></asp:Label>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="textbox_content" ></asp:TextBox>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" CssClass="panel">
                    <asp:Label ID="lblContent" runat="server" Text="Content" CssClass="label_content"></asp:Label>
                    <asp:TextBox ID="txtContent" runat="server" CssClass="textbox_content" Rows="100" Columns="1" TextMode="MultiLine" Wrap="true" Height="400px" Font-Names="calibri, verdana"></asp:TextBox>
                    <ajaxToolkit:HtmlEditorExtender ID="txtContent_HtmlEditorExtender" runat="server" BehaviorID="txtContent_HtmlEditorExtender" TargetControlID="txtContent" DisplaySourceTab="true">
                    </ajaxToolkit:HtmlEditorExtender>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" CssClass="panel2">
                    <asp:Label ID="lblCategory" runat="server" Text="Category" CssClass="label_content"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstrMember %>" SelectCommand="SELECT [Id_cat], [Category] FROM [Categories]"></asp:SqlDataSource>
                    <asp:DropDownList ID="ddlCategories" runat="server" CssClass="textbox_content" Height="25px" DataSourceID="SqlDataSource1" DataTextField="Category" DataValueField="Id_cat">
                           
                    </asp:DropDownList>
                </asp:Panel>
                <asp:Panel ID="Panel4" runat="server" CssClass="panel2">
                    <asp:Label ID="lblTags" runat="server" Text="Tags" CssClass="label_content"></asp:Label>
                    <asp:TextBox ID="txtTags" runat="server" CssClass="textbox_content" Width="90%"></asp:TextBox>
                </asp:Panel>
                <asp:Panel ID="Panel5" runat="server" CssClass="panel">
                    <asp:Label ID="lblImage" runat="server" Text="Image" CssClass="label_content"></asp:Label>
                   <%-- <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" CssClass="ajax_image"  runat="server" AllowedFileTypes="jpeg,jpg,png,gif,bmp" ClearFileListAfterUpload="true" MaximumNumberOfFiles="1"  Visible="true"  Height="6%" Mode="Auto" />--%>
                    <ajaxToolkit:AsyncFileUpload ID="AsyncFileUpload1" runat="server" CssClass="ajax_image" />
                </asp:Panel>
                

                <div class="clear"></div>
                <footer>
                    <asp:Button ID="btnReset"  runat="server" Text="Reset"  Style="float: right; height: 28px; width: 80px; font-weight: bold; box-shadow: 0 1px 1px #808080; clear: both; margin: 2px 20px 0 0;text-shadow:0 1px 0 #fff;" OnClick="btnReset_Click"  />
                    <asp:Button ID="btnPublish" runat="server" Text="Publish"  Style="float: right; margin: 2px 20px 0 0; width: 80px; height: 28px; box-shadow: 0 1px 1px #808080; font-weight: bold;text-shadow:0 1px 0 #fff;" OnClick="btnPublish_Click" />
                    <asp:DropDownList ID="ddlDraft" runat="server" CssClass="ddl_draft">
                        <asp:ListItem Text="Published" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Draft" Value="1"></asp:ListItem>
                    </asp:DropDownList>
                </footer>

            </div>
        </article>
    </div>
</asp:Content>

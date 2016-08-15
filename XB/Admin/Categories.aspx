<%@ Page Title="Categories" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="XB.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <article class="module">
            <header>
                <h3>
                    <asp:Label ID="lblHeader" runat="server" Text="Categories"></asp:Label>
                </h3>
            </header>
            <div class="module_content">
                <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        
                        <asp:BoundField  DataField="Id_cat" HeaderText="Id" ReadOnly="true"/>
                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <%# Eval("Category") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCat" runat="server" Text='<%# Eval("Category") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ShowEditButton="True"  ButtonType="Button"/>
                        <asp:CommandField ShowSelectButton="True"  ButtonType="Button"/>
                        <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />

                    </Columns>
                    <RowStyle BorderStyle="Dotted" BorderWidth="0.2px" />
                </asp:GridView>
                <div class="clear"></div>
                <footer>
                    <%--<asp:Button ID="btnUpdate" runat="server" Text="Update" Visible="false" Style="float: right; height: 28px; width: 80px; font-weight: bold; box-shadow: 0 1px 1px #808080; clear: both; margin: 2px 20px 0 0;" OnClick="btnUpdate_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Visible="false" Style="float: right; margin: 2px 20px 0 0; width: 80px; height: 28px; box-shadow: 0 1px 1px #808080; font-weight: bold;" OnClick="btnCancel_Click" />
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btnEdit" Visible="true" OnClick="btnEdit_Click" />
               --%> </footer>

            </div>
        </article>
    </div>
</asp:Content>

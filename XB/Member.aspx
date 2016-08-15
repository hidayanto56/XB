<%@ Page Title="Members" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="XB.Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Our Members</h2><hr />
    <p>Admin yang mengelola website ini adalah semua anggota kelas kami.</p>
    <asp:GridView ID="gvMember" runat="server" HorizontalAlign="Justify" Font-Size="Small" 
        AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField HeaderText="No" DataField="No" ItemStyle-Width="30px" ReadOnly="true">
                <ItemStyle Width="30px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="NPM" DataField="NPM" ItemStyle-Width="200px" ReadOnly="true">
                <ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Nama" DataField="Nama" ItemStyle-Width="240px" ReadOnly="true">
                <ItemStyle Width="240px"></ItemStyle>
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Content>

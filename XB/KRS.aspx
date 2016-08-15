<%@ Page Title="Kartu Rencana Studi" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="KRS.aspx.cs" Inherits="XB.KRS" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h2>Kartu Rencana Studi</h2>
    <hr />
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="5" Height="299px" Width="690px"  TabStripPlacement="Top">
        <ajaxToolkit:TabPanel HeaderText="TabPanel1" ID="TabPanel1" runat="server" >
            <HeaderTemplate>
                Semester 1
            </HeaderTemplate>
            <ContentTemplate>
                <h4>Semester 1</h4><hr />
                <asp:GridView ID="gvKRS1" runat="server" AutoGenerateColumns="False" Font-Size="Smaller" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:BoundField HeaderText="Kode MK" DataField="KodeMK" ItemStyle-Width="50px" ReadOnly="true">
                            <ItemStyle Width="50px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Kelas" DataField="Kelas" ItemStyle-Width="50px" ReadOnly="true" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Mata Kuliah" DataField="NamaMK" ItemStyle-Width="260px" ReadOnly="true">
                            <ItemStyle Width="260px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Dosen" DataField="Nama" ItemStyle-Width="180px" ReadOnly="true">
                            <ItemStyle Width="180px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="sks" DataField="sks" ItemStyle-Width="10px" ReadOnly="true" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center" Width="10px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Semester" DataField="Semester" ItemStyle-Width="10px" ReadOnly="true" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center" Width="10px"></ItemStyle>
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
            <HeaderTemplate>
                Semester 2
            </HeaderTemplate>
            <ContentTemplate>
                <h4>Semester 2</h4><hr />
                    <asp:GridView ID="gvKRS2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="Smaller" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="KodeMK" HeaderText="Kode MK" ReadOnly="True">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Kelas" HeaderText="Kelas" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NamaMK" HeaderText="Mata Kuliah" ReadOnly="True">
                                <ItemStyle Width="260px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nama" HeaderText="Dosen" ReadOnly="True">
                                <ItemStyle Width="180px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sks" HeaderText="sks" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Semester" HeaderText="Semester" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
            <HeaderTemplate>
                Semester 3
            </HeaderTemplate>
            <ContentTemplate>
                <h4>Semester 3</h4><hr />
                    <asp:GridView ID="gvKRS3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="Smaller" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="KodeMK" HeaderText="Kode MK" ItemStyle-Width="50px" ReadOnly="true">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Kelas" HeaderText="Kelas" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NamaMK" HeaderText="Mata Kuliah" ItemStyle-Width="260px" ReadOnly="true">
                                <ItemStyle Width="260px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nama" HeaderText="Dosen" ItemStyle-Width="180px" ReadOnly="true">
                                <ItemStyle Width="180px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sks" HeaderText="sks" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Semester" HeaderText="Semester" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
            <HeaderTemplate>
                Semester 4
            </HeaderTemplate>
            <ContentTemplate>
                <h4>Semester 4</h4><hr />
                <asp:GridView ID="gvKRS4" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="Smaller" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="KodeMK" HeaderText="Kode MK" ItemStyle-Width="50px" ReadOnly="true">
                            <ItemStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Kelas" HeaderText="Kelas" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NamaMK" HeaderText="Mata Kuliah" ItemStyle-Width="260px" ReadOnly="true">
                            <ItemStyle Width="260px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Nama" HeaderText="Dosen" ItemStyle-Width="180px" ReadOnly="true">
                            <ItemStyle Width="180px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sks" HeaderText="sks" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center" Width="10px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Semester" HeaderText="Semester" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center" Width="10px" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="TabPanel5">
            <HeaderTemplate>
                Semester 5
            </HeaderTemplate>
            <ContentTemplate>
                <h4>Semester 5</h4><hr />
                    <asp:GridView ID="gvKRS5" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="Smaller" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="KodeMK" HeaderText="Kode MK" ItemStyle-Width="50px" ReadOnly="true">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Kelas" HeaderText="Kelas" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NamaMK" HeaderText="Mata Kuliah" ItemStyle-Width="260px" ReadOnly="true">
                                <ItemStyle Width="260px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nama" HeaderText="Dosen" ItemStyle-Width="180px" ReadOnly="true">
                                <ItemStyle Width="180px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sks" HeaderText="sks" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Semester" HeaderText="Semester" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel6" runat="server" HeaderText="TabPanel6">
            <HeaderTemplate>
                Semester 6
            </HeaderTemplate>
            <ContentTemplate>
                <h4>Semester 6</h4><hr />
                    <asp:GridView ID="gvKRS6" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="Smaller" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="KodeMK" HeaderText="Kode MK" ItemStyle-Width="50px" ReadOnly="true">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Kelas" HeaderText="Kelas" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NamaMK" HeaderText="Mata Kuliah" ItemStyle-Width="260px" ReadOnly="true">
                                <ItemStyle Width="260px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nama" HeaderText="Dosen" ItemStyle-Width="180px" ReadOnly="true">
                                <ItemStyle Width="180px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sks" HeaderText="sks" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Semester" HeaderText="Semester" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel7" runat="server" HeaderText="TabPanel7">
            <HeaderTemplate>
                Semester 7
            </HeaderTemplate>
            <ContentTemplate>
                <h4>Semester 7</h4><hr />
                    <asp:GridView ID="gvKRS7" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="Smaller" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="KodeMK" HeaderText="Kode MK" ItemStyle-Width="50px" ReadOnly="true">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Kelas" HeaderText="Kelas" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NamaMK" HeaderText="Mata Kuliah" ItemStyle-Width="260px" ReadOnly="true">
                                <ItemStyle Width="260px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nama" HeaderText="Dosen" ItemStyle-Width="180px" ReadOnly="true">
                                <ItemStyle Width="180px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sks" HeaderText="sks" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Semester" HeaderText="Semester" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                                <ItemStyle HorizontalAlign="Center" Width="10px" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel8" runat="server" HeaderText="TabPanel8">
            <HeaderTemplate>
                Semester 8
            </HeaderTemplate>
            <ContentTemplate>
                <h4>Semester 8</h4><hr />
                <asp:GridView ID="gvKRS8" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="Smaller" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="KodeMK" HeaderText="Kode MK" ItemStyle-Width="50px" ReadOnly="true">
                            <ItemStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Kelas" HeaderText="Kelas" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NamaMK" HeaderText="Mata Kuliah" ItemStyle-Width="260px" ReadOnly="true">
                            <ItemStyle Width="260px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Nama" HeaderText="Dosen" ItemStyle-Width="180px" ReadOnly="true">
                            <ItemStyle Width="180px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sks" HeaderText="sks" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center" Width="10px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Semester" HeaderText="Semester" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10px" ReadOnly="true">
                            <ItemStyle HorizontalAlign="Center" Width="10px" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
    <br />
</asp:Content>

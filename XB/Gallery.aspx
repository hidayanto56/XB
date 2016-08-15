<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Web.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="XB.Gallery" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <script runat="Server" type="text/C#">
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] { 
            new AjaxControlToolkit.Slide("~/Images/Unindra-1.png","Logo","Unindra","~/Images/Unindra-1.png"),
            new AjaxControlToolkit.Slide("~/Images/UNINDRA.jpg","Kampus","Kampus Unindra","~/Images/UNINDRA.jpg"),
            new AjaxControlToolkit.Slide("~/Images/1429741256301.jpg","XB2013","Liburan ke Ragunan","~/Images/1429741256301.jpg"),
            new AjaxControlToolkit.Slide("images/Water lilies.jpg", "Water lillies", "Lillies in the water", "images/Water lilies.jpg"),
            new AjaxControlToolkit.Slide("images/VerticalPicture.jpg", "Sedona", "Portrait style picture", "images/VerticalPicture.jpg")};
        }
    </script>
    <asp:Label ID="lblTitle" runat="server" ></asp:Label>
    <asp:Image ID="Image1" runat="server" Height="400px" Width="600px" />
    <asp:Label ID="lblDisc" runat="server"></asp:Label>
    <ajaxToolkit:SlideShowExtender ID="SlideShowExtender1" runat="server"  AutoPlay="true" Loop="true" 
        TargetControlID="Image1" ImageTitleLabelID="lblTitle" ImageDescriptionLabelID="lblDisc"
         SlideShowAnimationType="SlideRight" SlideShowServiceMethod="GetImages" />
</asp:Content>

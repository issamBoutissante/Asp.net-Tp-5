<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Acueil.aspx.cs" Inherits="TP_5.Acueil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 896px;
            margin-bottom: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>La Page Acueil<asp:Button ID="Deconnection" runat="server" CssClass="auto-style3" Height="38px" OnClick="Deconnection_Click" Text="Deconnection" Width="129px" />
    </h1>
</asp:Content>

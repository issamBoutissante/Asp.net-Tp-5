﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TP_5.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Nom"></asp:Label>
    <asp:TextBox ID="Nom" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="Mot Pass"></asp:Label>
    <asp:TextBox ID="password" runat="server"></asp:TextBox><br />
    <asp:Button ID="SeConnecter" runat="server" Text="Se Connecter" OnClick="SeConnecter_Click" />
    <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red" />
</asp:Content>

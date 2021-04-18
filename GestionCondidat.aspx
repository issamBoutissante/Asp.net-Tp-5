<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="GestionCondidat.aspx.cs" Inherits="TP_5.GestionCondidat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    CodeCand
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="codeCand" runat="server" Text='<%# Eval("codeCand") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="NomCand" runat="server" Text='<%# Eval("NomCand") %>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    Nom Condidat
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("NomCand") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="DateInscription" runat="server" Text='<%# Eval("DateInscription") %>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    Date Inscription
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("DateInscription") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="NumSession" runat="server" Text='<%# Eval("NumSession") %>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    Num Session
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("NumSession") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="NomSociete" runat="server" Text='<%# Eval("NomSociete") %>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    Nom Societe
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("NomSociete") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:Button ID="Modifier" runat="server" CommandName="Update" Text="Modifier" />
                    <asp:Button ID="Annuler" runat="server" CommandName="Cancel" Text="Annuler" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Editer" runat="server" CommandName="Edit" ToolTip="Edit" Text="Editer" />
                    <asp:Button ID="Supprimer" runat="server" CommandName="Delete" Text="Supprimer" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

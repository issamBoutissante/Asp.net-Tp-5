<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AjoutCondidat.aspx.cs" Inherits="TP_5.AjoutCondidat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:flex;flex-direction:row">
        <div>
            <asp:Label runat="server" Text="Code Cand" />
            <asp:TextBox runat="server" ID="CodeCand" />
            <br />
            <asp:Label runat="server" Text="Nom Candidat" />
            <asp:TextBox runat="server" ID="NomCand" />
            <br />
            <asp:Label runat="server" Text="Date Inscription" />
            <asp:TextBox runat="server" ID="DateInscription" />
            <br />
            <asp:Label runat="server" Text="Num Session" />
            <asp:TextBox runat="server" ID="NumSession" />
            <br />
            <asp:Label runat="server" Text="Nom societe" />
            <asp:TextBox runat="server" ID="NomSociete" />
            <br />
            <asp:Label runat="server" ID="ErrorMessage" ForeColor="Red" />
            <br />
            <asp:Button runat="server" ID="Ajouter" OnClick="Ajouter_Click" Text="Ajouter" />
            <br />
            <asp:Button runat="server" ID="serializer" OnClick="serializer_Click" Text="Serializer" />
        </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    CodeCand
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="CodeCand" runat="server" Text='<%# Eval("codeCand") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    Nom Condidat
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("NomCand") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    Date Inscription
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("DateInscription") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    Num Session
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("NumSession") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    Nom Societe
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("NomSociete") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>

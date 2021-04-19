<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AjoutCondidat.aspx.cs" Inherits="TP_5.AjoutCondidat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:flex;flex-direction:row">
        <div>
            <table>
                <tr>
                    <td>
                       <asp:Label runat="server" Text="Code Cand" />
                    </td>
                     <td>
                         <asp:TextBox runat="server" ID="CodeCand" />
                    </td>
                </tr>
                <tr>
                    <td>
                       <asp:Label runat="server" Text="Nom Candidat" />
                    </td>
                     <td>
                         <asp:TextBox runat="server" ID="NomCand" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Date Inscription" />
                    </td>
                     <td>
                        <asp:TextBox runat="server" ID="DateInscription" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label runat="server" Text="Num Session" />
                    </td>
                     <td>
                         <asp:TextBox runat="server" ID="NumSession" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label runat="server" Text="Nom societe" />
                    </td>
                     <td>
                         <asp:TextBox runat="server" ID="NomSociete" />
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Button runat="server" ID="Ajouter" OnClick="Ajouter_Click" Text="Ajouter" />
                    </td>
                     <td>
                         <asp:Button runat="server" ID="serializer" OnClick="serializer_Click" Text="Serializer XML" />
                         <asp:Button runat="server" ID="serializerSchema" OnClick="serializerSchema_Click" Text="Serializer Schema" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                         <asp:Label runat="server" ID="ErrorMessage" ForeColor="Red" />
                    </td>
                </tr>
            </table>
           
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

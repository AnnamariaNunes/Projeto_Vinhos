<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="vinho.aspx.cs" Inherits="Projeto_Final_Vinho.vinho" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="Sqlvinho">
        <ItemTemplate>
            Nome:
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
            <br />
            Produtor:
            <asp:Label ID="ProdutorLabel" runat="server" Text='<%# Eval("Produtor") %>' />
            <br />
            Foto:
            <asp:Label ID="FotoLabel" runat="server" Text='<%# Eval("Foto") %>' />
            <br />
            Regiao:
            <asp:Label ID="RegiaoLabel" runat="server" Text='<%# Eval("Regiao") %>' />
            <br />
            Tipo:
            <asp:Label ID="TipoLabel" runat="server" Text='<%# Eval("Tipo") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="Sqlvinho" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Nome], [Produtor], [Foto], [Regiao], [Tipo] FROM [Vinho]"></asp:SqlDataSource>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Projeto_Final_Vinho.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="listVinhos" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
    </asp:DataList>
    <p>
    <asp:LinkButton ID="LinkPrimeira" runat="server" OnClick="LinkPrimeira_Click">Primeira</asp:LinkButton>
    <asp:LinkButton ID="LinkAnterior" runat="server" OnClick="LinkAnterior_Click">Anterior</asp:LinkButton>
    <asp:LinkButton ID="LinkSeguinte" runat="server" OnClick="LinkSeguinte_Click">Seguinte</asp:LinkButton>
    <asp:LinkButton ID="LinkUltima" runat="server" OnClick="LinkUltima_Click">Ultima</asp:LinkButton>
</asp:Content>
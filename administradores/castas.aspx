<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="castas.aspx.cs" Inherits="Projeto_Final_Vinho.administradores.castas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gridCastas" runat="server" AutoGenerateSelectButton="True" GridLines="None" CssClass="mt-4" SelectedRowStyle-Font-Bold="true"></asp:GridView>
    <asp:TextBox ID="textNome" runat="server" Width="300" CssClass="form-control"></asp:TextBox>
    <asp:TextBox ID="textCaracteristicas" runat="server" Width="300" CssClass="form-control" TextMode="MultiLine" Height="100"></asp:TextBox>
    <asp:LinkButton ID="linkAdicionar" runat="server" Text="Adicionar Casta" CssClass="link-primary" OnClick="linkAdicionar_Click"></asp:LinkButton>
    <asp:LinkButton ID="linkActualizar" runat="server" Text="Actualizar Casta" CssClass="link-primary ms-4" OnClick="linkActualizar_Click"></asp:LinkButton>
    <asp:LinkButton ID="linkEliminar" runat="server" Text="Eliminar Casta" CssClass="link-primary ms-4" OnClick="linkEliminar_Click"></asp:LinkButton>
</asp:Content>
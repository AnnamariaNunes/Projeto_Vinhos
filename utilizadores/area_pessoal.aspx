<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="area_pessoal.aspx.cs" Inherits="Projeto_Final_Vinho.utilizadores.area_pessoal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridVinhos" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Sqlvinhos" OnRowDataBound="GridView1_RowDataBound" style="margin-right: 0px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome">
            <ItemStyle Width="400px" />
            </asp:BoundField>
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo">
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="Região" HeaderText="Região" SortExpression="Região">
            <ItemStyle Width="150px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Sqlvinhos" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Vinho.Id, Vinho.Nome, Tipo.Nome AS 'Tipo', Regiao.Nome AS 'Região' FROM Regiao INNER JOIN Vinho ON Regiao.Id = Vinho.Regiao INNER JOIN Tipo ON Vinho.Tipo = Tipo.Id WHERE (Vinho.Utilizador = @id)">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id_utilizador" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="buttonCriarVinhos" runat="server" OnClick="Button1_Click" Text="Criar Vinhos" />
    <asp:Button ID="buttonEditarVinhos" runat="server" Text="Editar Vinhos" OnClick="buttonEditarVinhos_Click" />
</asp:Content>

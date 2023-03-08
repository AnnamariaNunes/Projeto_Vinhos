<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="criar_conta.aspx.cs" Inherits="Projeto_Final_Vinho.criar_conta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
            <tr>
                <td>
                    <h4>Criar Conta</h4>
                </td>
                <td></td>   
            </tr>
            <tr>
                <td>Nome</td>
                <td>
                    <asp:TextBox runat="server" ID="Name" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateName" runat="server" ControlToValidate="Name" ErrorMessage="Insira um nome válido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox runat="server" ID="Email" TextMode="Email" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validarEmail" runat="server" ControlToValidate="Email" ErrorMessage="Insira um Email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Data de Nascimento</td>
                <td>
                    <asp:TextBox runat="server" ID="BirthDate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateBirth" runat="server" ControlToValidate="BirthDate" ErrorMessage="Insira Data de Nascimento"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ValidateBirthDate" ControlToValidate="BirthDate" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox runat="server" ID="Username" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateUsername" runat="server" ControlToValidate="Username" ErrorMessage="Insira um username válido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidatePassword" runat="server" ControlToValidate="Password" ErrorMessage="Insira uma password válida"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button runat="server" ID="Btnconta" Text="Criar Conta" CssClass="btn btn-primary" OnClick="Btnconta_Click1" />
                </td>
            </tr>
        </table>
</asp:Content>

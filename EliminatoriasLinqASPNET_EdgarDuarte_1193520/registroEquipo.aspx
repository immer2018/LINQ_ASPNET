<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registroEquipo.aspx.cs" Inherits="EliminatoriasLinqASPNET_EdgarDuarte_1193520.registroEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="lbl" runat="server" Text="Equipo"></asp:Label>
    <asp:TextBox ID="txtEquipo" runat="server" Width="263px"></asp:TextBox>
    <asp:Button ID="btnRegistroEquipo" runat="server" Height="25px" OnClick="btnRegistroEquipo_Click" Text="Registrar" Width="153px" CssClass="btn-primary" />
    <asp:Label ID="lblOK" runat="server"></asp:Label>
    <asp:Label ID="lblError" runat="server"></asp:Label>

</asp:Content>

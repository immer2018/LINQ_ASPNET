<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IngresoFecha.aspx.cs" Inherits="EliminatoriasLinqASPNET_EdgarDuarte_1193520.IngresoFecha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Fecha
        <asp:TextBox ID="txtFecha" runat="server" Width="225px" TextMode="Date"></asp:TextBox>
    </p>
    <p>
        Equipo1
        <asp:DropDownList ID="ddlEquipo1" runat="server" DataSourceID="dsEquipo" DataTextField="nombre" DataValueField="id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="dsEquipo" runat="server" ConnectionString="<%$ ConnectionStrings:partidoDBConnectionString %>" SelectCommand="SELECT [id], [nombre] FROM [equipo]"></asp:SqlDataSource>
    </p>
    <p>
        Goles del primer equipo
    </p>
    <p>
        <asp:TextBox ID="txtGol1" runat="server"  Width="222px"></asp:TextBox>
    </p>
    <p>
        <br />
    </p>
   
    <p>
         Equipo2
        <asp:DropDownList ID="ddlEquipo2" runat="server" DataSourceID="dsEquipo1" DataTextField="nombre" DataValueField="id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="dsEquipo1" runat="server" ConnectionString="<%$ ConnectionStrings:partidoDBConnectionString %>" SelectCommand="SELECT [id], [nombre] FROM [equipo]"></asp:SqlDataSource>
        <br />
    </p>

     <p>
        Goles del segundo equipo
    </p>
    <p>
        <asp:TextBox ID="txtGol2" runat="server" Width="222px"></asp:TextBox>
    </p>
<p>
        <asp:Button ID="btnRegistroFecha" runat="server" CssClass="btn-primary" Text="Registrar Fecha" Width="173px" OnClick="btnRegistroFecha_Click" />
    </p>
    <p>
        <asp:Label ID="lblOk" runat="server"></asp:Label>
    </p>




</asp:Content>

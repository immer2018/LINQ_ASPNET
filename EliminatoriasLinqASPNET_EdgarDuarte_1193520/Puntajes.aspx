<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Puntajes.aspx.cs" Inherits="EliminatoriasLinqASPNET_EdgarDuarte_1193520.Puntajes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .orangetxt {
            color:darkorange;
        }
    </style>
     <div style="height:3vh;"> </div>
        <h1 class="text-center orangetxt">Tabla de Posiciones</h1>

    <div style="height:3vh;"> </div>

    <asp:GridView ID="grvPosiciones" runat="server" AutoGenerateColumns="False"  DataSourceID="dsPosiciones" CssClass="table table-hover">
       
      <Columns>
           
            <asp:BoundField DataField="nombre" HeaderText="Equipo" SortExpression="Equipo" />
            <asp:BoundField DataField="puntos" HeaderText="Puntos" SortExpression="Puntos" />
            <asp:BoundField DataField="GolesAF" HeaderText="Goles A Favor" ReadOnly="True" SortExpression="GF" />
            <asp:BoundField DataField="GolesEC" HeaderText="Goles En contra " ReadOnly="True" SortExpression="GC" />
         
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dsPosiciones" runat="server" ConnectionString="<%$ ConnectionStrings:partidoDBConnectionString %>" SelectCommand="SELECT  e.nombre, e.puntos, SUM(d.goles1) AS GolesAF, SUM(d.goles2) AS GolesEC FROM equipo AS e INNER JOIN fecha AS f ON e.id = f.fkIdE1 INNER JOIN detalle AS d ON f.fkIdE2 = d.id 
GROUP BY  e.nombre, e.puntos ORDER BY e.puntos DESC">

    </asp:SqlDataSource>
</asp:Content>

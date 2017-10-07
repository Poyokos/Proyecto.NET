<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Atracciones.aspx.cs" Inherits="AplicacionASP.Atracciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        - Nueva Atracción:</p>
    <p>
        - Nombre:&nbsp;&nbsp;
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
&nbsp;&nbsp; - Lugares:&nbsp;&nbsp;
        <asp:DropDownList ID="ddlLugares" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="¡Agregar!" />
    </p>
</asp:Content>

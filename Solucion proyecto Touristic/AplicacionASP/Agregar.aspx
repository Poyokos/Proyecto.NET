﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="AplicacionASP.Agregar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 290px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">- Lugar:</td>
            <td>
                <asp:DropDownList ID="ddlLugares" runat="server">
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="rfvLugar" runat="server" ControlToValidate="ddlLugares" ErrorMessage="Debe ingresar un lugar" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Button ID="btnAgregarLugar" runat="server" CausesValidation="False" OnClick="btnAgregarLugar_Click" Text="Agregar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">- Nota:</td>
            <td>
                <asp:TextBox ID="txtNota" runat="server" ReadOnly="True" Width="33px"></asp:TextBox>
                &nbsp;<asp:Button ID="btnNota" runat="server" Text="Puntuar" OnClick="btnNota_Click" CausesValidation="False" />
                &nbsp;<asp:RequiredFieldValidator ID="rfvPuntos" runat="server" ControlToValidate="txtNota" ErrorMessage="Se requiere una puntuación" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">- Observacion:</td>
            <td aria-atomic="True">
                <asp:TextBox ID="txtObservacion" runat="server" Rows="3" TextMode="MultiLine" Height="80px" Width="235px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvObservacion" runat="server" ControlToValidate="txtObservacion" ErrorMessage="Debe que dejar una observacion del lugar" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <asp:Label ID="lblNotificacion" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" CausesValidation="False" />
            </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

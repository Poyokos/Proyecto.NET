<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="AplicacionASP.Agregar" %>
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
            <td class="auto-style1">Lugar</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:Button ID="btnLugar" runat="server" Text="Agregar" OnClick="btnLugar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Nota</td>
            <td>
                <asp:TextBox ID="txtNota" runat="server" ReadOnly="True" Width="33px"></asp:TextBox>
                <asp:Button ID="btnNota" runat="server" Text="Puntuar" OnClick="btnNota_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Observacion</td>
            <td>
                <asp:TextBox ID="txtObservacion" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">¿Desea agregar<br /> comentario de alguna atraccion?</td>
            <td>
                <asp:RadioButton ID="rbSi" runat="server" Text="Si" AutoPostBack="True" GroupName="atraccionGroup" OnCheckedChanged="rbSi_CheckedChanged" />
                <asp:RadioButton ID="rbNo" runat="server" Text="No" AutoPostBack="True" GroupName="atraccionGroup" OnCheckedChanged="rbSi_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Atraccion</td>
            <td>
                <asp:Button ID="btnAtraccion" runat="server" Text="Agregar" Enabled="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" />
            </td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

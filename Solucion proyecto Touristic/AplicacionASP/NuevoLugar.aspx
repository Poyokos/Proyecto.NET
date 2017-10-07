<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuevoLugar.aspx.cs" Inherits="AplicacionASP.NuevoLugar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 355px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Nombre:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td>Apertura:&nbsp;
                        <asp:TextBox ID="hEntrada" runat="server" Width="28px"></asp:TextBox>
                        :<asp:TextBox ID="mEntrada" runat="server" Width="28px"></asp:TextBox>
                    <asp:DropDownList ID="ddApertura" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Direccion:&nbsp; 
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                </td>
                <td>Cierre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="hSalida" runat="server" Width="28px"></asp:TextBox>
                        :<asp:TextBox ID="mSalida" runat="server" Width="28px"></asp:TextBox>
                    <asp:DropDownList ID="ddClausura" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Gratuito<asp:RadioButton ID="rbSi" runat="server" Text="Si" />
                    <asp:RadioButton ID="rbNo" runat="server" Text="No" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                    &nbsp;
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

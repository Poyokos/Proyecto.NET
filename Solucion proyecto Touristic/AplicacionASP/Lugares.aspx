<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lugares.aspx.cs" Inherits="AplicacionASP.Lugares" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 355px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <td class="auto-style1">Direccion:&nbsp; <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
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
    </form>
</body>
</html>

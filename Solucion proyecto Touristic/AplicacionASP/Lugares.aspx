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
                    <td class="auto-style1">Nombre:</td>
                    <td>Apertura:</td>
                </tr>
                <tr>
                    <td class="auto-style1">Direccion</td>
                    <td>Cierre:</td>
                </tr>
                <tr>
                    <td class="auto-style1">Gratuito<asp:RadioButton ID="RadioButton1" runat="server" />
                        <asp:RadioButton ID="RadioButton2" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

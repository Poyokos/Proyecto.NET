<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Turista.aspx.cs" Inherits="AplicacionASP.Turista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 121px;
        }
        .auto-style2 {
            width: 152px;
        }
        .auto-style3 {
            width: 133px;
        }
        .auto-style4 {
            width: 66%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style1">Nombre:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">Rut / Pasaporte:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Nacionalidad:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">Edad:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Agregar" />
    
    </div>
    </form>
</body>
</html>

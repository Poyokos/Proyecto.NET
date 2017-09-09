<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Turista.aspx.cs" Inherits="AplicacionASP.Turista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 464px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Nombre:</td>
                <td>Rut/Pasaporte:</td>
            </tr>
            <tr>
                <td class="auto-style1">Nacionalidad:</td>
                <td>Edad:</td>
            </tr>
        </table>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>

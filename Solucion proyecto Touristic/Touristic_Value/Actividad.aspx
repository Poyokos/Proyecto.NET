<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Actividad.aspx.cs" Inherits="Touristic_Value.Actividad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 216px;
        }
    </style>
</head>
<body>
    <form id="form1">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Lugar</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Fecha</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Nota</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Observacion</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">¿Desea agregar<br />
                        comentario de alguna atraccion?</td>
                    <td>
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Si" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Atraccion</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Button" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

</asp:Content>

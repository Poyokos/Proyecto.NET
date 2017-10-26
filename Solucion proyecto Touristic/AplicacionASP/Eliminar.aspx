<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="AplicacionASP.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 339px;
        }
        .auto-style2 {
            width: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>- Lugar:</b>&nbsp;&nbsp;
            <asp:DropDownList ID="ddlLugares" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLugares_SelectedIndexChanged" Width="120px">
            </asp:DropDownList>            
        <br />
        <br />
        <asp:ListBox ID="lbResumen" runat="server" Height="216px" Width="769px"></asp:ListBox>
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="¡Eliminar!" />
                </td>
                <td>
                    <asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

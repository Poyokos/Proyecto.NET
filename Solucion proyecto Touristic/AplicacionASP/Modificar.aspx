<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="AplicacionASP.Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 50px;
            margin-top: 13px;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style4 {
            width: 63px;
        }
        .auto-style5 {
            width: 151px;
        }
        .auto-style7 {
            width: 122px;
        }
        .auto-style8 {
            width: 184px;
        }
        .auto-style9 {
            width: 158px;
        }
        .auto-style12 {
            width: 518px;
        }
        .auto-style15 {
            width: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">- Lugar:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlLugares" runat="server" Height="19px" Width="116px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnEditar" runat="server" Text="¡Editar!" OnClick="btnEditar_Click" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="lblNombre" runat="server" Text="- Nombre:" Visible="False"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtNombre" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="lblDireccion" runat="server" Text="- Dirección:" Visible="False"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDireccion" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblApertura" runat="server" Text="- Apertura:" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="hEntrada" runat="server" MaxLength="2" TextMode="Number" ToolTip="Horas" Visible="False" Width="25px"></asp:TextBox>
                    &nbsp;
                    <asp:TextBox ID="mEntrada" runat="server" MaxLength="2" TextMode="Number" ToolTip="Minutos" Visible="False" Width="25px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblCierre" runat="server" Text="- Cierre:" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="hSalida" runat="server" MaxLength="2" TextMode="Number" ToolTip="Horas" Visible="False" Width="25px"></asp:TextBox>
                    &nbsp;
                    <asp:TextBox ID="mSalida" runat="server" MaxLength="2" TextMode="Number" ToolTip="Minutos" Visible="False" Width="25px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="lblGratuito" runat="server" Text="- Gratuito:" Visible="False"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:CheckBox ID="cbGratuito" runat="server" Visible="False" />
                </td>
                <td>
                    <asp:Button ID="btnCancelar" runat="server" Text="¡Cancelar!" OnClick="btnCancelar_Click" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="lblExposicion" runat="server" Text="- Exposición:" Visible="False"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddlExposicion" runat="server" Visible="False">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" OnClick="btnActualizar_Click" Text="¡Actualizar!" Visible="False" />
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
</asp:Content>
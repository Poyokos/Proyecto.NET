<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuevoLugar.aspx.cs" Inherits="AplicacionASP.NuevoLugar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 355px;
        }
        .auto-style2 {
            width: 307px;
        }
        .auto-style3 {
            width: 355px;
            height: 30px;
        }
        .auto-style4 {
            width: 307px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">- Nombre&nbsp;&nbsp; :&nbsp;
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="¡Debe ingresar un nombre!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">- Apertura:&nbsp;
                        <asp:TextBox ID="hEntrada" runat="server" Width="25px" MaxLength="2" TextMode="Number"></asp:TextBox>
                        &nbsp;: <asp:TextBox ID="mEntrada" runat="server" Width="25px" MaxLength="2" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvHraApertura" runat="server" ControlToValidate="hEntrada" ErrorMessage="¡Debe ingresar un horario de apertura!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvApertura" runat="server" ControlToValidate="hEntrada" ErrorMessage="¡Formato de horario debe ser de 24 horas!" ForeColor="Red" MaximumValue="23" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">- Dirección :&nbsp; <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="¡Debe ingresar una dirección!" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">- Cierre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="hSalida" runat="server" Width="25px" MaxLength="2" TextMode="Number"></asp:TextBox>
                        &nbsp;: <asp:TextBox ID="mSalida" runat="server" Width="25px" MaxLength="2" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvHraCierre" runat="server" ControlToValidate="hSalida" ErrorMessage="¡Debe ingresar un horario de cierre!" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvCierre" runat="server" ControlToValidate="hSalida" ErrorMessage="¡Formato de horario debe ser de 24 horas!" ForeColor="Red" MaximumValue="23" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">- Gratuito: <asp:RadioButton ID="rbSi" runat="server" Text="Si" Checked="True" GroupName="Gratis" />
                    <asp:RadioButton ID="rbNo" runat="server" Text="No" GroupName="Gratis" />
                </td>
                <td class="auto-style4">(El horario debe ser ingresado en formato 24 hrs).</td>
            </tr>
            <tr>
                <td class="auto-style1">- Exposición:
                    <asp:DropDownList ID="ddlExposicion" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                    &nbsp;
                    </td>
                <td class="auto-style2">
                    <asp:Label ID="lblNotificacion" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
</asp:Content>

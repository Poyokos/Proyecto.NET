﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IngresoTurista.aspx.cs" Inherits="AplicacionASP.IngresoTurista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style3 {
            height: 34px;
            width: 325px;
        }
        .auto-style4 {
            height: 26px;
            width: 325px;
        }
        .auto-style5 {
            width: 325px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNom" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre es Obligatorio">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">Numero de Documento:&nbsp;
                    <asp:TextBox ID="txtDocumento" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="cvDoc" runat="server" ControlToValidate="txtDocumento" ErrorMessage="N°Documento debe ser en numeros" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfvDoc" runat="server" ControlToValidate="txtDocumento" ErrorMessage="N°Documento es obligatorio">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEdad" runat="server" ControlToValidate="txtEdad" ErrorMessage="Edad Es Obligatorio">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvEdad" runat="server" ControlToValidate="txtEdad" ErrorMessage="Edad debe ser en numeros" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                </td>
                <td class="auto-style1">Nacionalidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNac" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Nacionalidad es obligatoria">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" CausesValidation="False" />
                </td>
                <td>
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

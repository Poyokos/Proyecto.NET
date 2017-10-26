<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IngresoTurista.aspx.cs" Inherits="AplicacionASP.IngresoTurista" %>
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
            width: 189px;
        }
        .auto-style8 {
            height: 26px;
            width: 189px;
        }
        .auto-style9 {
            width: 189px;
        }
        #dContenedor {
            text-align: center;
            width: 30em;
            height: 17em;
            border: 1px solid #BDBDBD;
            border-radius: 2em;
            padding: 2em;
        }
        input {
            padding: 0.5em;
            width: 15em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
<<<<<<< HEAD
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNom" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre es Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="valNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre debe ser con letras" Operator="DataTypeCheck" ForeColor="Red">*</asp:CompareValidator>
                </td>
                <td class="auto-style2">Numero de Documento:&nbsp;
                    <asp:TextBox ID="txtDocumento" runat="server" MaxLength="9"></asp:TextBox>
                    <asp:CompareValidator ID="cvDoc" runat="server" ControlToValidate="txtDocumento" ErrorMessage="N°Documento debe ser en numeros" Operator="DataTypeCheck" Type="Integer" ForeColor="Red">*</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfvDoc" runat="server" ControlToValidate="txtDocumento" ErrorMessage="N°Documento es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Maximo 9 digitos sin puntos ni guiones)</td>
            </tr>
            <tr>
                <td class="auto-style4">Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEdad" runat="server" ControlToValidate="txtEdad" ErrorMessage="Edad Es Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvEdad" runat="server" ControlToValidate="txtEdad" ErrorMessage="Edad debe ser en numeros" Operator="DataTypeCheck" Type="Integer" ForeColor="Red">*</asp:CompareValidator>
                    <asp:RangeValidator ID="RangoEdad" runat="server" ControlToValidate="txtEdad" ErrorMessage="Edad debe ser entre 17 y 60 años" MaximumValue="60" MinimumValue="17" Type="Integer" ForeColor="Red">*</asp:RangeValidator>
                </td>
                <td class="auto-style1">Nacionalidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNac" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Nacionalidad es obligatoria" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="valNaciona" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Nombre debe ser con letras" Operator="DataTypeCheck" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" CausesValidation="False" />
                </td>
                <td>
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblNotificacion" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
=======
        <center>
            <div id="dContenedor">
                <table style="width:100%;" align="left">
                    <tr>
                        <td class="auto-style3">Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;
                            </td>
                        <td class="auto-style2"><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNom0" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre es Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="valNombre0" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre debe ser con letras" ForeColor="Red" Operator="DataTypeCheck">*</asp:CompareValidator>
                            <br />
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;
                            </td>
                        <td class="auto-style1">
                            &nbsp;&nbsp;
                            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEdad0" runat="server" ControlToValidate="txtEdad" ErrorMessage="Edad Es Obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvEdad0" runat="server" ControlToValidate="txtEdad" ErrorMessage="Edad debe ser en numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                            <asp:RangeValidator ID="RangoEdad0" runat="server" ControlToValidate="txtEdad" ErrorMessage="Edad debe ser entre 17 y 60 años" ForeColor="Red" MaximumValue="60" MinimumValue="17" Type="Integer">*</asp:RangeValidator>
                            <br />
&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Numero de Documento:&nbsp;<br />
                            <br />
                            &nbsp;
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtDocumento" runat="server" MaxLength="9"></asp:TextBox>
                            <asp:CompareValidator ID="cvDoc0" runat="server" ControlToValidate="txtDocumento" ErrorMessage="N°Documento debe ser en numeros" ForeColor="Red" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="rfvDoc0" runat="server" ControlToValidate="txtDocumento" ErrorMessage="N°Documento es obligatorio" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <br />
                            (Maximo 9 digitos sin puntos ni guiones)<br />
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Nacionalidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNac1" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Nacionalidad es obligatoria" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="valNaciona1" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="Nombre debe ser con letras" ForeColor="Red" Operator="DataTypeCheck">*</asp:CompareValidator>
                            <br />
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblNotificacion" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Button ID="btnCancelar" runat="server" CausesValidation="False" OnClick="btnCancelar_Click" Text="Cancelar" />
                        </td>
                        <td>
                            <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
                        </td>
                    </tr>
                </table>
            </div>
        </center>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
>>>>>>> 0beeef4694c7d785003d39f58c8166fbf8183a30
    </asp:Panel>
</asp:Content>

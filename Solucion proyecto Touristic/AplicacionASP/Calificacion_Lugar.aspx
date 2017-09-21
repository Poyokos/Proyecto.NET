<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Calificacion_Lugar.aspx.cs" Inherits="AplicacionASP.Calificacion_Lugar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 217px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="width: 1261px">
    
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblAtractivo" runat="server" Text="Atractivo:" ToolTip="Evalua el Atractivo"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButton ID="optAt1" runat="server" GroupName="gnAtractivo" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt2" runat="server" GroupName="gnAtractivo" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt3" runat="server" GroupName="gnAtractivo" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt4" runat="server" GroupName="gnAtractivo" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt5" runat="server" GroupName="gnAtractivo" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt6" runat="server" GroupName="gnAtractivo" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt7" runat="server" GroupName="gnAtractivo" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
                    &nbsp;<asp:Label ID="lblvAtractivo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblAutenticidad" runat="server" Text="Autenticidad:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButton ID="optAu1" runat="server" GroupName="gnAutenticidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu2" runat="server" GroupName="gnAutenticidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu3" runat="server" GroupName="gnAutenticidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu4" runat="server" GroupName="gnAutenticidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu5" runat="server" GroupName="gnAutenticidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu6" runat="server" GroupName="gnAutenticidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu7" runat="server" GroupName="gnAutenticidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
                &nbsp;<asp:Label ID="lblvAutenticidad" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblSingularidad" runat="server" Text="Singularidad:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButton ID="optSi1" runat="server" GroupName="gnSingularidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi2" runat="server" GroupName="gnSingularidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi3" runat="server" GroupName="gnSingularidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi4" runat="server" GroupName="gnSingularidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi5" runat="server" GroupName="gnSingularidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi6" runat="server" GroupName="gnSingularidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi7" runat="server" GroupName="gnSingularidad" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
                &nbsp;<asp:Label ID="lblvSingularidad" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblMult_Actividades" runat="server" Text="Multiplicidad de Actividades:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButton ID="optMu1" runat="server" GroupName="gnMultActividades" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu2" runat="server" GroupName="gnMultActividades" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu3" runat="server" GroupName="gnMultActividades" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu4" runat="server" GroupName="gnMultActividades" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu5" runat="server" GroupName="gnMultActividades" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu6" runat="server" GroupName="gnMultActividades" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu7" runat="server" GroupName="gnMultActividades" Text=" " AutoPostBack="True" OnCheckedChanged="optAt1_CheckedChanged" />
                &nbsp;<asp:Label ID="lblvMult_Actividades" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Total:</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True" Width="75px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" />
                </td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnCalificar" runat="server" Text="Calificar" OnClick="btnCalificar_Click" />
                </td>
            </tr>
            </table>
        <br />
        <br />
        (*)Ubique el cursor sobre el nombre de la categoría para más información.<br />
        <br />
        <br />
        <br />
    
    </div>
    
</asp:Content>

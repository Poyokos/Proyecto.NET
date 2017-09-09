<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calificacion.aspx.cs" Inherits="AplicacionASP.Calificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 154px;
        }
        .auto-style4 {
            width: 620px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1261px">
    
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7</td>
            </tr>
            <tr>
                <td class="auto-style1">Atractivo:</td>
                <td class="auto-style4">
                    <asp:RadioButton ID="optAt1" runat="server" GroupName="gnAtractivo" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt2" runat="server" GroupName="gnAtractivo" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt3" runat="server" GroupName="gnAtractivo" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt4" runat="server" GroupName="gnAtractivo" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt5" runat="server" GroupName="gnAtractivo" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt6" runat="server" GroupName="gnAtractivo" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAt7" runat="server" GroupName="gnAtractivo" Text=" " />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Autenticidad:</td>
                <td class="auto-style4">
                    <asp:RadioButton ID="optAu1" runat="server" GroupName="gnAutenticidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu2" runat="server" GroupName="gnAutenticidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu3" runat="server" GroupName="gnAutenticidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu4" runat="server" GroupName="gnAutenticidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu5" runat="server" GroupName="gnAutenticidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu6" runat="server" GroupName="gnAutenticidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optAu7" runat="server" GroupName="gnAutenticidad" Text=" " />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Singularidad</td>
                <td class="auto-style4">
                    <asp:RadioButton ID="optSi1" runat="server" GroupName="gnSingularidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi2" runat="server" GroupName="gnSingularidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi3" runat="server" GroupName="gnSingularidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi4" runat="server" GroupName="gnSingularidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi5" runat="server" GroupName="gnSingularidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi6" runat="server" GroupName="gnSingularidad" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optSi7" runat="server" GroupName="gnSingularidad" Text=" " />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Multiplicidad de Actividades:</td>
                <td class="auto-style4">
                    <asp:RadioButton ID="optMu1" runat="server" GroupName="gnMultActividades" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu2" runat="server" GroupName="gnMultActividades" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu3" runat="server" GroupName="gnMultActividades" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu4" runat="server" GroupName="gnMultActividades" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu5" runat="server" GroupName="gnMultActividades" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu6" runat="server" GroupName="gnMultActividades" Text=" " />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="optMu7" runat="server" GroupName="gnMultActividades" Text=" " />
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
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnCalificar" runat="server" Text="Calificar" />
                </td>
            </tr>
            </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

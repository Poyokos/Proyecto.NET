<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="AplicacionASP.Inicio" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style1" Height="624px">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Lugar:&nbsp;&nbsp;
            <asp:DropDownList ID="ddlLugares" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLugares_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp; - Dirección:
            <asp:Label ID="lblDireccion" runat="server"></asp:Label>
            &nbsp;&nbsp; - Gratuito:&nbsp;&nbsp;
            <asp:Label ID="lblGratis" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Promedio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblPromedio" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Comentarios:&nbsp;
            <asp:Label ID="lblCantComentarios" runat="server"></asp:Label>
            <br />
            <asp:ListView ID="lvResumen" runat="server">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFFFFF;color: #284775;">- Nombre:
                        <asp:Label ID="NombreTuristaLabel" runat="server" Text='<%# Eval("NombreTurista") %>' />
                        <br />
                        - Observacion:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Observacion") %>' />
                        <br />
                        - Nota:
                        <asp:Label ID="NotaLabel" runat="server" Text='<%# Eval("Nota") %>' />
                        <br />
                        - Fecha Publicación:
                        <asp:Label ID="FechaDeCriticaLabel" runat="server" Text='<%# Eval("FechaDeCritica") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    No se han devuelto datos.
                </EmptyDataTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #E0FFFF;color: #333333;">- Nombre:
                        <asp:Label ID="NombreTuristaLabel" runat="server" Text='<%# Eval("NombreTurista") %>' />
                        <br />
                        - Observacion:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Observacion") %>' />
                        <br />
                        - Nota:
                        <asp:Label ID="NotaLabel" runat="server" Text='<%# Eval("Nota") %>' />
                        <br />
                        - Fecha Publicación:
                        <asp:Label ID="FechaDeCriticaLabel" runat="server" Text='<%# Eval("FechaDeCritica") %>' />
                        <br />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">- Nombre:
                        <asp:Label ID="NombreTuristaLabel" runat="server" Text='<%# Eval("NombreTurista") %>' />
                        <br />
                        - Observacion:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Observacion") %>' />
                        <br />
                        - Nota:
                        <asp:Label ID="NotaLabel" runat="server" Text='<%# Eval("Nota") %>' />
                        <br />
                        - Fecha Publicación:
                        <asp:Label ID="FechaDeCriticaLabel" runat="server" Text='<%# Eval("FechaDeCritica") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
        </asp:Panel>
</asp:Content>

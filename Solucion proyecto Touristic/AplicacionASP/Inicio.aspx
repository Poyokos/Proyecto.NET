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
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style1" Height="624px" BackColor="White" Font-Names="Imprint MT Shadow">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>- Lugar:</b>&nbsp;&nbsp;
            <asp:DropDownList ID="ddlLugares" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLugares_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp; <b>- Dirección:</b>
            <asp:Label ID="lblDireccion" runat="server"></asp:Label>
            &nbsp;&nbsp; <b>- Gratuito:</b>&nbsp;&nbsp;
            <asp:Label ID="lblGratis" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>- Promedio:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblPromedio" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>- Comentarios:</b>&nbsp;
            <asp:Label ID="lblCantComentarios" runat="server"></asp:Label>
            <br />
            <asp:ListView ID="lvResumen" runat="server" OnPagePropertiesChanging="lvResumen_PagePropertiesChanging">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFFFFF;color: #284775; list-style: none; border-radius: 1em; padding: 1em; border: 1px solid #A9D0F5">- Nombre:
                        <asp:Label ID="NombreTuristaLabel" runat="server" Text='<%# Eval("NombreTurista") %>' />
                        <br />
                        - Observación:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Observacion") %>' />
                        <br />
                        - Nota:
                        <asp:Label ID="NotaLabel" runat="server" Text='<%# Eval("Nota") %>' />
                        <br />
                        - Publicación:
                        <asp:Label ID="PublicacionLabel" runat="server" Text='<%# Eval("Publicacion") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    <br>
                    <br>
                    <center><h2>¡Aún no hay comentarios!</h2> </center>
                </EmptyDataTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #A9D0F5;color: #333333; list-style: none; border-radius: 1em; padding: 1em;">
                        - Nombre:
                        <asp:Label ID="NombreTuristaLabel" runat="server" Text='<%# Eval("NombreTurista") %>' />
                        <br />
                        - Observación:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Observacion") %>' />
                        <br />
                        - Nota:
                        <asp:Label ID="NotaLabel" runat="server" Text='<%# Eval("Nota") %>' />
                        <br />
                        - Publicación:
                        <asp:Label ID="PublicacionLabel" runat="server" Text='<%# Eval("Publicacion") %>' />
                        <br />
                    </li>
                </ItemTemplate>
                


                <SelectedItemTemplate>
                    <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        - Nombre:
                        <asp:Label ID="NombreTuristaLabel" runat="server" Text='<%# Eval("NombreTurista") %>' />
                        <br />
                        - Observación:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Observacion") %>' />
                        <br />
                        - Nota:
                        <asp:Label ID="NotaLabel" runat="server" Text='<%# Eval("Nota") %>' />
                        <br />
                        - Publicación:
                        <asp:Label ID="PublicacionLabel" runat="server" Text='<%# Eval("Publicacion") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <br>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="dpPaginacion" runat="server" PageSize="3" PagedControlID="lvResumen" >
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
            <br />
        </asp:Panel>
</asp:Content>

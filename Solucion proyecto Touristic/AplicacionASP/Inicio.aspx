<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="AplicacionASP.Inicio" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }

        #dContenedor {
            width: 70%;
        }
        .lInfo {
            padding: 0.5em;
            border: 1px solid black;
            border-radius: 3em;
        }
        #ddlLugares {
            padding: 0.5em;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style1" Height="624px" BackColor="White" Font-Names="Imprint MT Shadow">
            <br />
            <center>
                <div>
                    <asp:Label ID="lblLugar" CssClass="lInfo" runat="server" Text="Lugar:"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="ddlLugares" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLugares_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;&nbsp; <b>
                    <asp:Label ID="lblDireccion2" CssClass="lInfo" runat="server" Text="Dirección:"></asp:Label>
                    </b>
                    &nbsp;<asp:Label ID="lblDireccion" runat="server"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblGratuito" CssClass="lInfo" runat="server" Text="Gratuito:"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lblGratis" runat="server"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblPromedio2" CssClass="lInfo" runat="server" Text="Promedio:"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lblPromedio" runat="server"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblCantComentarios2" CssClass="lInfo" runat="server" Text="Comentarios:"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lblCantComentarios" runat="server"></asp:Label>
                </div>
            </center>
            <br />
            <br />
            <center>
            <div id="dContenedor">
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
            </div>
                </center>
            <br />
        </asp:Panel>
</asp:Content>

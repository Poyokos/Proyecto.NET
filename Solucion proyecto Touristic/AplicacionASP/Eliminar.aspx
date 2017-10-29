<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="AplicacionASP.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>- Lugar:</b>&nbsp;&nbsp;
            <asp:DropDownList ID="ddlLugares" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLugares_SelectedIndexChanged">
            </asp:DropDownList>            
    </asp:Panel>
    <asp:ListView ID="lvResumen" runat="server">
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
            <center>
                <h2>¡Aún no hay comentarios!</h2>
            </center>
            </br>
            </br>
        </EmptyDataTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #A9D0F5;color: #333333; list-style: none; border-radius: 1em; padding: 1em;">- Nombre:
                <asp:Label ID="NombreTuristaLabel0" runat="server" Text='<%# Eval("NombreTurista") %>' />
                <br />
                - Observación:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Observacion") %>' />
                <br />
                - Nota:
                <asp:Label ID="NotaLabel0" runat="server" Text='<%# Eval("Nota") %>' />
                <br />
                - Publicación:
                <asp:Label ID="PublicacionLabel0" runat="server" Text='<%# Eval("Publicacion") %>' />
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
            <li style="background-color: red;font-weight: bold;color: #333333;">- Nombre:
                <asp:Label ID="NombreTuristaLabel1" runat="server" Text='<%# Eval("NombreTurista") %>' />
                <br />
                - Observación:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Observacion") %>' />
                <br />
                - Nota:
                <asp:Label ID="NotaLabel1" runat="server" Text='<%# Eval("Nota") %>' />
                <br />
                - Publicación:
                <asp:Label ID="PublicacionLabel1" runat="server" Text='<%# Eval("Publicacion") %>' />
                <br />
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    </asp:Content>

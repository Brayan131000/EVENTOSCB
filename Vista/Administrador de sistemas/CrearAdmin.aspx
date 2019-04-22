<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearAdmin.aspx.cs" Inherits="Vista.Administrador_de_sistemas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
            width: 128px;
        }
        .auto-style3 {
            height: 23px;
            width: 187px;
        }
        .auto-style4 {
            width: 187px;
        }
        .auto-style5 {
            width: 128px;
        }
        .auto-style6 {
            width: 128px;
            height: 30px;
        }
        .auto-style7 {
            width: 187px;
            height: 30px;
        }
        .auto-style8 {
            width: 128px;
            height: 26px;
        }
        .auto-style9 {
            width: 187px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Documento"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txbdocumento" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cerrar sesión" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txbnombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Apellido</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txbapellido" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txbcorreo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server" Text="Teléfono"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txbtelefono" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Text="Celular"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txbcelular" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txbusuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txbcontraseña" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server" Text="Tipo de usuario"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txbtipousuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btncrear" runat="server" OnClick="btncrear_Click" Text="CREAR" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="txtmensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

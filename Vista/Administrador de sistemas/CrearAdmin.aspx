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
        .auto-style10 {
            height: 23px;
            width: 73px;
        }
        .auto-style12 {
            width: 73px;
            height: 26px;
        }
        .auto-style13 {
            width: 73px;
            height: 30px;
        }
        .auto-style14 {
            width: 73px;
        }
        .auto-style15 {
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="txtmensajeformu" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cerrar sesión" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Documento"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txbdocumento" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rvdocumento" runat="server" ControlToValidate="txbdocumento" ErrorMessage="El documento es obligatorio"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txbnombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:CustomValidator ID="cvnombre" runat="server" ControlToValidate="txbnombre" ErrorMessage="El nombre debe contener al menos 3 letras" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style8">Apellido</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txbapellido" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txbapellido" OnServerValidate="CustomValidator1_ServerValidate1">El apellido debe contener al menos 3 letras</asp:CustomValidator>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txbcorreo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvcorreo" runat="server" ControlToValidate="txbcorreo" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server" Text="Teléfono"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txbtelefono" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:CustomValidator ID="cvtelefono" runat="server" ClientValidationFunction="txbtelefono" ErrorMessage="Debe contener  ocho digitos" OnServerValidate="cvtelefono_ServerValidate"></asp:CustomValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Text="Celular"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txbcelular" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:CustomValidator ID="cvcelular" runat="server" ControlToValidate="txbcelular" ErrorMessage="Debe contener diez digítos" OnServerValidate="cvcelular_ServerValidate"></asp:CustomValidator>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txbusuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:CustomValidator ID="cvusuario" runat="server" ControlToValidate="txbusuario" ErrorMessage="El usuario debe contener al menos 4 caracteres" OnServerValidate="cvusuario_ServerValidate"></asp:CustomValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="txtmensajecontra" runat="server" CssClass="auto-style15" Text="Puedes utilizar letras, números y simbolos."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txbcontraseña" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:CustomValidator ID="cvcontraseña" runat="server" ControlToValidate="txbcontraseña" ErrorMessage="Contraseña  muy corta. Debe contener al menos 8 caracteres " OnServerValidate="cvcontraseña_ServerValidate"></asp:CustomValidator>
                    </td>
                    <td class="auto-style9">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Tipo de usuario"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="dbltipousuario" runat="server">
                            <asp:ListItem>Sistemas</asp:ListItem>
                            <asp:ListItem>Eventos</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="rftipousuario" runat="server" ControlToValidate="dbltipousuario" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btncrear" runat="server" OnClick="btncrear_Click" Text="CREAR" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="txtmensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

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
            width: 192px;
        }
        .auto-style3 {
            height: 23px;
            width: 187px;
        }
        .auto-style4 {
            width: 187px;
        }
        .auto-style5 {
            width: 192px;
        }
        .auto-style6 {
            width: 192px;
            height: 30px;
        }
        .auto-style7 {
            width: 187px;
            height: 30px;
        }
        .auto-style8 {
            width: 192px;
            height: 26px;
        }
        .auto-style9 {
            width: 187px;
            height: 26px;
        }
        .auto-style10 {
            height: 23px;
            width: 95px;
        }
        .auto-style12 {
            width: 95px;
            height: 26px;
        }
        .auto-style13 {
            width: 95px;
            height: 30px;
        }
        .auto-style14 {
            width: 95px;
        }
        .auto-style15 {
            color: #0000FF;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style19 {
            width: 99px;
            height: 26px;
        }
        .auto-style20 {
            width: 99px;
            height: 30px;
        }
        .auto-style21 {
            height: 23px;
            width: 99px;
        }
        .auto-style22 {
            width: 99px;
        }
        .auto-style23 {
            width: 192px;
            height: 28px;
        }
        .auto-style24 {
            width: 95px;
            height: 28px;
        }
        .auto-style25 {
            width: 99px;
            height: 28px;
        }
        .auto-style26 {
            width: 187px;
            height: 28px;
        }
        .auto-style27 {
            height: 51px;
        }
        .auto-style28 {
            margin-left: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cerrar sesión" CssClass="auto-style28" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="4">
                       <Center> <asp:Label ID="Label9" runat="server" Text="FORMULARIO REGISTRO ADMINISTRADOR"></asp:Label>
                    </Center></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="txtmensajeformu" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label1" runat="server" Text="Documento"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txbdocumento" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rvdocumento" runat="server" ControlToValidate="txbdocumento" ErrorMessage="El documento es obligatorio"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="txbnombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:CustomValidator ID="cvnombre" runat="server" ControlToValidate="txbnombre" ErrorMessage="El nombre debe contener al menos 3 letras" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="Apellido" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txbapellido" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txbapellido" OnServerValidate="CustomValidator1_ServerValidate1">El apellido debe contener al menos 3 letras</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txbcorreo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvcorreo" runat="server" ControlToValidate="txbcorreo" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label6" runat="server" Text="Teléfono"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txbtelefono" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:CustomValidator ID="cvtelefono" runat="server" ClientValidationFunction="txbtelefono" ErrorMessage="Debe contener  ocho digitos" OnServerValidate="cvtelefono_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="Label7" runat="server" Text="Celular"></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txbcelular" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:CustomValidator ID="cvcelular" runat="server" ControlToValidate="txbcelular" ErrorMessage="Debe contener diez digítos" OnServerValidate="cvcelular_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txbusuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:CustomValidator ID="cvusuario" runat="server" ControlToValidate="txbusuario" ErrorMessage="El usuario debe contener al menos 4 caracteres" OnServerValidate="cvusuario_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <center><asp:Label ID="txtmensajecontra" runat="server" CssClass="auto-style15" Text="Puedes utilizar letras, números y simbolos."></asp:Label>
                   </center> </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txbcontraseña" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:CustomValidator ID="cvcontraseña" runat="server" ControlToValidate="txbcontraseña" ErrorMessage="Contraseña  muy corta. Debe contener al menos 8 caracteres " OnServerValidate="cvcontraseña_ServerValidate"></asp:CustomValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        </td>
                    <td class="auto-style24">
                        <asp:Label ID="Label8" runat="server" Text="Tipo de usuario"></asp:Label>
                    </td>
                    <td class="auto-style25">
                        <asp:DropDownList ID="dbltipousuario" runat="server">
                            <asp:ListItem>Sistemas</asp:ListItem>
                            <asp:ListItem>Eventos</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="rftipousuario" runat="server" ControlToValidate="dbltipousuario" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="auto-style27">
                       <center> <asp:Button ID="btncrear" runat="server" OnClick="btncrear_Click" Text="REGISTRAR" />
                   </center> </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="txtmensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

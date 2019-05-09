<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearEmpresa.aspx.cs" Inherits="Vista.Administrador_de_sistemas.CrearEmpresa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 165px;
        }
        .auto-style4 {
            width: 136px;
        }
        .auto-style5 {
            width: 153px;
        }
        .auto-style6 {
            width: 157px;
        }
        .auto-style7 {
            width: 153px;
            height: 26px;
        }
        .auto-style8 {
            width: 136px;
            height: 26px;
        }
        .auto-style9 {
            width: 157px;
            height: 26px;
        }
        .auto-style10 {
            width: 165px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6">
                      <center> <asp:Label ID="Label1" runat="server" Text="FOMULARIO REGISTRO EMPRESA"></asp:Label>
                    </center> </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="txtnit" runat="server" Text="Nit empresa"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txbnit" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="txtpersona" runat="server" Text="Persona "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddltipopersona" runat="server">
                            <asp:ListItem>Natural</asp:ListItem>
                            <asp:ListItem>Juridica</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" Text="Documento encargado"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txbdocumentoencargado" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label5" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txbnombre" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label6" runat="server" Text="Correo"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txbcorreo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Text="Dirección"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txbdireccion" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label8" runat="server" Text="Telefono/ Celular"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txbtelefono" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6">
                       <center> <asp:Button ID="Button1" runat="server" Text="REGISTRAR" OnClick="Button1_Click" />
                  </center>  </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="txtmensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

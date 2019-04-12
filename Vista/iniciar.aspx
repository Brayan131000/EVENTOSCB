<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iniciar.aspx.cs" Inherits="Vista.Login" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login |CódigoMasters|</title>

    
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 133px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 133px;
            height: 23px;
        }
        .auto-style5 {
            width: 109px;
        }
        .auto-style6 {
            height: 23px;
            width: 109px;
        }
        .auto-style7 {
            height: 25px;
        }
        .auto-style8 {
            width: 133px;
            height: 25px;
        }
        .auto-style9 {
            width: 109px;
            height: 25px;
        }
    </style>
	
</head>
<body style="height: 374px">
   
    <form id="form1" runat="server">
   
    <div class="limiter">
        <div class="container">
            <div class="contenedor-form">
               
                <div class="formulario">
                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                            <button class="login100-form-btn" type="button" id="dropdown1" data-toggle="dropdown">
                            </button>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label1" runat="server" Text="Iniciar sesión"></asp:Label>
                                    </td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label2" runat="server" Text="Documento"></asp:Label>
                                    </td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="txtdocumento" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style9"></td>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style7"></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label3" runat="server" Text="Usuario"></asp:Label>
                                    </td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtusuario" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3"></td>
                                    <td class="auto-style4">
                                        <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>
                                    </td>
                                    <td class="auto-style6"></td>
                                    <td class="auto-style3"></td>
                                    <td class="auto-style3"></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtcontraseña" Type="password" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3"></td>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style6">
                                        <asp:Button ID="btningresar" runat="server" OnClick="btningresar_Click" Text="Ingresar" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Label ID="txtmensaje" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style3"></td>
                                </tr>
                            </table>
                        </div>
                     
                </div>

            </div>
        </div>
    </div>
    
    <script src="js/jquery-3.1.1.min.js"></script>
      
    <script src="vendor/bootstrap/js/popper.js"></script>
    
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="vendor/select2/select2.min.js"></script>

	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>  
   
    <script src="js/main.js"></script>
    
    </form>
    
</body>
</html>
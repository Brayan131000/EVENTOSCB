<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Vista.Prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 
  <link rel="stylesheet" href="Estilos/estilo.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="limiter">
        <div class="container">
            <div class="contenedor-form">
                <div class="toggle">
                    
                </div>

                <div class="formulario">
                    <h2>Iniciar Sesión</h2>
                       <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                             <asp:TextBox ID="txtusuario" runat="server" placeholder="Usuario"></asp:TextBox>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span>
                        </div>
                       
                        <div class="wrap-input100 validate-input" data-validate = "Password is required">
                            <asp:TextBox ID="txtcontraseña" Type="password" runat="server" placeholder="Contraseña"></asp:TextBox>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </span>
                        </div>    
                   <asp:Button ID="btningresar" runat="server" OnClick="btningresar_Click" Text="Ingresar" />
                         
                                
                           
					    <br />
                    <br />
                    <asp:Label ID="txtmensaje" runat="server"></asp:Label>
                    <br />
                         
                                
                           
					    </div>
                </div>

                
    </form>
   
</body>
</html>

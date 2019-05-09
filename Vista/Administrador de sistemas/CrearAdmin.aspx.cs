using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Control;
using System.Data; 
namespace Vista.Administrador_de_sistemas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Controlgestionar C = new Controlgestionar();
        DataSet datos = new DataSet();
        bool ejecuto = false;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncrear_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                txtmensajeformu.Text = "El Formulario Es Correcto";

                int documento = int.Parse(txbdocumento.Text);
                string nombre = txbnombre.Text;
                string apellido = txbapellido.Text;
                string correo = txbcorreo.Text;
                decimal telefono = decimal.Parse(txbtelefono.Text);
                decimal celular = decimal.Parse(txbcelular.Text);
                string usuario = txbusuario.Text;
                string contraseña = txbcontraseña.Text;
                string tipousuario = dbltipousuario.SelectedValue;
                ejecuto = C.crearAdmin(documento, nombre, apellido, correo, telefono, celular, usuario, contraseña, tipousuario);
                if (ejecuto)
                {
                    txtmensaje.Text = "Se creo el administrador correctamente";

                   Response.Redirect("AdministradorSistemas.aspx");
                }
                else txtmensaje.Text = "Datos incorrectos";
                }
           


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            HttpContext.Current.Response.Redirect("../Prueba.aspx", true); /* tu pagina de logueo*/

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txbnombre.Text.Length >= 3)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }

        protected void cvtelefono_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txbtelefono.Text.Length >= 8)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void cvcelular_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txbcelular.Text.Length >= 10)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {

            if (txbapellido.Text.Length >= 3)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void cvusuario_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txbusuario.Text.Length >= 3)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }

        protected void cvcontraseña_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txbcontraseña.Text.Length >= 8)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}
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
        ControlCrear C = new ControlCrear();
        DataSet datos = new DataSet();
        bool ejecuto = false;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncrear_Click(object sender, EventArgs e)
        {
            int documento = int.Parse(txbdocumento.Text);
            string nombre = txbnombre.Text;
            string apellido = txbapellido.Text;
            string correo = txbcorreo.Text;
            decimal telefono = decimal.Parse(txbtelefono.Text);
            decimal celular = decimal.Parse(txbcelular.Text);
            string usuario = txbusuario.Text;
            string contraseña = txbcontraseña.Text;
            string tipousuario = txbtipousuario.Text;
            ejecuto = C.crearAdmin(documento, nombre, apellido, correo, telefono, celular, usuario, contraseña, tipousuario);
            if (ejecuto)  txtmensaje.Text = "Se creo el administrador correctamente"; 
            else txtmensaje.Text = "Datos incorrectos";




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            HttpContext.Current.Response.Redirect("../iniciar.aspx", true); /* tu pagina de logueo*/

        }
    }
}
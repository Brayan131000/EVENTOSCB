using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Control;

namespace Vista.Administrador_de_sistemas
{
    public partial class CrearEmpresa : System.Web.UI.Page
    {
        Controlgestionar c = new Controlgestionar();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool ejecuto = false;

            int nit = int.Parse(txbnit.Text);
            string persona = ddltipopersona.SelectedValue;
            int documentoE = int.Parse(txbdocumentoencargado.Text);
            string nombre = txbnombre.Text;
            string direccion = txbdireccion.Text;
            string celular = txbtelefono.Text;
            string correo = txbcorreo.Text;
            ejecuto = c.crearEmpresa(nit, persona, documentoE, nombre, direccion, celular,correo);
            if (ejecuto == true )
            {
                txtmensaje.Text = "Se registró correctamente";
            }
            else
            {
                txtmensaje.Text = "Datos incorrectos";
            }
        }
    }
}
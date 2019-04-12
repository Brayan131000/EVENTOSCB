using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Control;
using System.Data;
namespace Vista
{
    public partial class Login : System.Web.UI.Page
    {
        ControlLogin L = new ControlLogin();
        DataSet datos = new DataSet();
        bool ejecuto = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtmensaje.Text = "";
        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
          
            string usuario = txtusuario.Text;
            string contraseña = txtcontraseña.Text;
            ejecuto = L.login(usuario, contraseña);
            txtmensaje.Text = "";
            if (ejecuto)
            {
                if (datos.Tables[0].Rows[0][0].ToString() == ("sistemas"))
                {
                    Response.Redirect("AdministradorSistemas.aspx");

                }
                else if (datos.Tables[0].Rows[0][0].ToString() == ("eventos"))
                {
                    Response.Redirect("AdministradorEventos.aspx");
                }
            } 
            else
            {
                txtmensaje.Text = "Datos incorretos";
               
                
            }
       

        }

        protected void txtdocumento_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
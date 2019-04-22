using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vista
{
    public partial class AdministradorSistemas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncrear_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearAdmin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            HttpContext.Current.Response.Redirect("../iniciar.aspx", true); /* tu pagina de logueo*/


        }
    }
}
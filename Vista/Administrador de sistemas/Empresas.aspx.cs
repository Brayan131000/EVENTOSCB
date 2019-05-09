using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Control; 
namespace Vista.Administrador_de_sistemas
{
    
    public partial class Empresas : System.Web.UI.Page
    { Controlgestionar g = new Controlgestionar();


        protected void Page_Load(object sender, EventArgs e)
        {
            mostrarEmpresa();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        public void mostrarEmpresa()
        {
            DataSet datos = new DataSet();
            datos = g.mostrarEmpresa();
            gvEmpresa.DataSource = datos;
            gvEmpresa.DataBind();
        }

        protected void gvEmpresa_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
    }
}
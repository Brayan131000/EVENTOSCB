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
           if (!IsPostBack)
            {
                mostrarEmpresa();
                
              }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearEmpresa.aspx");
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
            bool ejecuto = false;

            GridViewRow row = (GridViewRow)gvEmpresa.Rows[e.RowIndex];
            int nit = Convert.ToInt32(((TextBox)row.FindControl("txbnitempresa")).Text);
            string tipoempresa = ((TextBox)row.FindControl("txbtipoempresa")).Text;
            int documento = Convert.ToInt32(((TextBox)row.FindControl("txbdocumento")).Text);
            string nombre = ((TextBox)row.FindControl("txbnombre")).Text;
            string direccion = ((TextBox)row.FindControl("txbdireccion")).Text;
            string correo= ((TextBox)row.FindControl("txbcorreo")).Text;
            string celular= ((TextBox)row.FindControl("txbcelular")).Text;
            string estado = ((TextBox)row.FindControl("txbestado")).Text;
            ejecuto = g.modificarEmpresa(nit, tipoempresa, documento, nombre, direccion, correo, celular,estado);
            if(ejecuto==true)
            {
                txtmensaje.Text = "Editado correctamente";
                gvEmpresa.EditIndex = -1;
                mostrarEmpresa();
            }
            else
            {
                txtmensaje.Text = "Datos incorrectos";
                    mostrarEmpresa();
            }
        }

        protected void gvEmpresa_RowEditing(object sender, GridViewEditEventArgs e)
        {
          

        }

        protected void gvEmpresa_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEmpresa.EditIndex = -1;
            mostrarEmpresa();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            DataSet datos = new DataSet();
            int nit = int.Parse(txbbuscar.Text);
            datos = g.buscarEmpresa(nit);
            gvEmpresa.DataSource = datos;
            gvEmpresa.DataBind();
            mostrarEmpresaNit(nit);


        }
        public void mostrarEmpresaNit(int nit)
        {
            DataSet datos = new DataSet();
            datos = g.buscarEmpresa(nit);
            gvEmpresa.DataSource = datos;
            gvEmpresa.DataBind();
        }

        protected void gvEmpresa_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEmpresa.PageIndex = e.NewPageIndex;
            mostrarEmpresa();
        }

        protected void txbbuscar_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
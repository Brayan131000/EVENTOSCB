using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Control;
using Vista.Administrador_de_sistemas;

namespace Vista
{
    public partial class AdministradorSistemas : System.Web.UI.Page
    {
        DataSet datos = new DataSet();
        ControlAdminSistemas a = new ControlAdminSistemas();
        bool editar = false;
        Controlgestionar g = new Controlgestionar();
        int documento;
        string nombre;
        string apellido;
        string correo;
        decimal telefono;
        decimal celular;
        string usuario;
        string contraseña;
        string tipousuario;
        private int rowIndex;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mostrarCuentas();
           
            }
        }

        protected void btncrear_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearAdmin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            HttpContext.Current.Response.Redirect("../login.aspx", true); /* tu pagina de logueo*/


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            mostrarCuentas();
        }
        public void mostrarCuentasDocu(int documento)
        {
            DataSet datos = new DataSet();
            datos = g.buscarCuenta(documento);
            gvCuentas.DataSource = datos;
            gvCuentas.DataBind();
        }
        public void mostrarCuentas()
        {
            DataSet datos = new DataSet();
            datos = a.mostrarCuentas();
            gvCuentas.DataSource = datos;
            gvCuentas.DataBind();
        }

        protected void gvCuentas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvCuentas_SelectedIndexChanged1(object sender, EventArgs EditarCuentas)
        {
           
        }



      
        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }



        protected void gvCuentas_RowEditing(object sender, GridViewEditEventArgs e)
        {
           
        }

        protected void gvCuentas_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            bool ejecuto = false;

            GridViewRow row = (GridViewRow)gvCuentas.Rows[e.RowIndex];
            documento = Convert.ToInt32(((TextBox)row.FindControl("txbdocumento")).Text);
            nombre = ((TextBox)row.FindControl("txbnombre")).Text;
            apellido = ((TextBox)row.FindControl("txbapellido")).Text;
            correo = ((TextBox)row.FindControl("txbcorreo")).Text;
            telefono = Convert.ToInt32(((TextBox)row.FindControl("txbtelefono")).Text);
            celular = Convert.ToInt32(((TextBox)row.FindControl("txbcelular")).Text);
            usuario = ((TextBox)row.FindControl("txbusuario")).Text;
            contraseña = ((TextBox)row.FindControl("txbcontraseña")).Text;
            tipousuario = ((TextBox)row.FindControl("txbtipousuario")).Text;
            string estado = ((TextBox)row.FindControl("txbestado")).Text;
            ejecuto = g.modificarAdmin(documento, nombre, apellido, correo, telefono, celular, usuario, contraseña, tipousuario,estado);
            if (ejecuto == true)
            {
               
                txtmensaje.Text = "Editado correctamente";
                gvCuentas.EditIndex = -1;
                mostrarCuentas();
            }
            else
            {
                txtmensaje.Text = "Datos incorrectos";
            
            }
            mostrarCuentas();
        }

      
        protected void gvCuentas_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCuentas.EditIndex = -1;
            mostrarCuentas();

        }



        protected void gvCuentas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           /* bool ejecuto = false;
            GridViewRow row = (GridViewRow)gvCuentas.Rows[e.RowIndex];

            // documento= int.Parse(gvCuentas.DaRows[e.RowIndex].Cells[0])());
            //documento = int.Parse(((TextBox)row.FindControl("txbdocumento")).Text);
            // documento = Convert.ToInt32(((TextBox)row.FindControl("txbdocumento")).Text);
            //string  docu = gvCuentas.Rows[e.RowIndex].Cells[0].FindControl[1.ToString();
            string valor = ((Label)gvCuentas.Rows[e.RowIndex].FindControl("Label1")).Text;
            documento = int.Parse(valor);
            ejecuto = g.eliminarCategoria(documento);
            mostrarCuentas();*/
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            DataSet datos = new DataSet();
            documento = int.Parse(txbbuscar.Text);
            datos = g.buscarCuenta(documento);
            gvCuentas.DataSource = datos;
            gvCuentas.DataBind();
            mostrarCuentasDocu(documento);






        }

        protected void txbbuscar_TextChanged(object sender, EventArgs e)
        {
            /*int documento =int.Parse( txbbuscar.Text);
            DataSet datos = new DataSet();
            datos = g.buscarCuenta(documento);
            gvCuentas.DataSource = datos;
            gvCuentas.DataBind();*/
            
        }

        protected void gvCuentas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCuentas.PageIndex = e.NewPageIndex;
            mostrarCuentas();
        }
    }
}

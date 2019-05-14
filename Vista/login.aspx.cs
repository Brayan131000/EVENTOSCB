﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Control;
using System.Data;
namespace Vista
{
    public partial class Prueba : System.Web.UI.Page
    {
        ControlLogin L = new ControlLogin();
        DataSet datos = new DataSet();
        bool ejecuto = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btningresar_Click(object sender, EventArgs e)
        {

            string usuario = txtusuario.Text;
            string contraseña = txtcontraseña.Text;
            datos = L.login(usuario, contraseña);

            if (datos.Tables[0].Rows.Count > 0) ejecuto = true;
            if (ejecuto)
            {
                if (datos.Tables[0].Rows[0][1].ToString() == ("Sistemas") && datos.Tables[0].Rows[0][4].ToString() == ("Habilitado"))
                {
                    Response.Redirect("Administrador de sistemas/InicioAdmin.aspx");
                }
                else if (datos.Tables[0].Rows[0][1].ToString() == ("Eventos") && datos.Tables[0].Rows[0][4].ToString() == ("Habilitado"))
                {
                    Response.Redirect("Administrador de eventos/AdministradorEventos.aspx");

                }
                else if (datos.Tables[0].Rows[0][1].ToString() == ("Sistemas") && datos.Tables[0].Rows[0][4].ToString() == ("Deshabilitado"))
                {
                    txtmensaje.Text = "Su cuenta se encuentra deshabilitada. Por favor comuniquese con el administrador de sistemas para recuperarla.";
                }
                else if (datos.Tables[0].Rows[0][1].ToString() == ("Eventos") && datos.Tables[0].Rows[0][4].ToString() == ("Deshabilitado"))
                {
                    txtmensaje.Text = "Su cuenta se encuentra deshabilitada. Por favor comuniquese con el administrador de sistemas para recuperarla";

                }

            }
          
            else
            {

                txtmensaje.Text = "Usuario o contraseña incorrectos";


            }


        }
    }
}
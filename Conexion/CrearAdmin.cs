using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data; 
namespace Conexion
{
    public class CrearAdmin
    {
        Persistencia p = new Persistencia();
        DataSet datos = new DataSet();
        public bool crearAdmin(int documento, string nombre, string apellido, string correo, decimal telefono, decimal celular, string usuario, string contraseña, string tipousuario)
        {
            return p.ejecutarDMLProcedimiento(documento, nombre, apellido, correo, telefono, celular, usuario, contraseña, tipousuario);



        }



    }
}
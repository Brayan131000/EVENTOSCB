using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Conexion;
namespace Control
{
    public class ControlCrear
    {
        Persistencia p = new Persistencia(); 
        public bool crearAdmin (int documento,string nombre,string apellido,string correo,decimal telefono,decimal celular, string usuario, string contraseña,string tipousuario)
        {
            return p.ejecutarDMLProcedimiento(documento, nombre, apellido, correo, telefono, celular, usuario, contraseña, tipousuario);
        }
    }
}
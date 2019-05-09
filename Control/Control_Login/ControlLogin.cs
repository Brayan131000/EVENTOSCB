using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Conexion; 
namespace Control
{
    public class ControlLogin
    {
        Persistencia p = new Persistencia(); 
        public DataSet login(string usu, string pws)
        {
            string sql = "select * from Encargado where Usuario='" + usu + "' and Contraseña='" + pws + "';";
            return p.ejecutarConsulta(sql);

        }

    }
}
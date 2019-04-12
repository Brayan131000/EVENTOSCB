using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace Conexion
{
    public class Login
    {

        Persistencia p = new Persistencia();
        string sql="";
        DataSet data = new DataSet();
        public bool login(string usu, string pws)
        {
            sql = "select * from Encargado where Usuario='"+usu+ "' and Contraseña='"+pws+"';";
            return p.ejecutarDML(sql);

        }






    }
}
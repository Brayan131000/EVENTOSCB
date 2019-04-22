using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Conexion;
using System.Data;
namespace Control
{
    public class ControlLogin
    {
        Login l = new Login();
        public DataSet login(string usu, string pws)
        {
            return l.login(usu,pws);
        }



    }
}
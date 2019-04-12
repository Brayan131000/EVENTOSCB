using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Conexion;
namespace Control
{
    public class ControlLogin
    {
        Login l = new Login();
        public bool login(int doc, string usu, string pws)
        {
            return l.login(doc,usu,pws);
        }



    }
}
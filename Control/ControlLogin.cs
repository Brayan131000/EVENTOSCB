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
        public bool login(string usu, string pws)
        {
            return l.login(usu,pws);
        }



    }
}
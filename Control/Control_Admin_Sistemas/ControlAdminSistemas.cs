using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Conexion; 

namespace Control
{
    
    public class ControlAdminSistemas
    {
        DataSet datos = new DataSet();
        Persistencia p = new Persistencia();
       
        public DataSet mostrarCuentas()
        {
            DataSet datos = new DataSet();
            string sql = "Select p.idN_DocumentoP,p.nombre,p.apellido,p.correo,p.telefono,p.celular,e.idN_DocumentoEn,e.tipo_usuario,e.usuario,e.contraseña,e.estado from persona p inner join encargado e on (p.idN_DocumentoP = e.idN_DocumentoEn)";
            datos = p.ejecutarConsulta(sql);
            return datos;
        }







    }
}
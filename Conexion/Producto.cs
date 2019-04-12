using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace Conexion
{
    public class Producto
    {
        Persistencia p = new Persistencia();
        string sql = "";
        DataSet datos = new DataSet();
        public bool insertarProducto(string codigo,string nom,int pre, int can,int id)
        {
            sql = "Insert into producto(idProducto,nombreProducto,precioProducto,cantidadProducto,idCategoria) " + " values (" + codigo + ",'" + nom + "'," + pre + "," + can + "," + id + ")";
            return p.ejecutarDML(sql);

        }
        public bool eliminarProducto(int id)
        {
            sql = "Delete from producto where idProducto=" + id;
            return p.ejecutarDML(sql);
        }

        public bool modificarProducto(int id, string nom)
        {
            sql = "update producto set nombreProducto = '" + nom + "' where" + " idProducto=" + id;
            return p.ejecutarDML(sql);

        }

        public DataSet listarProducto(string nom)
        {
            sql = "select * from producto where nombreProducto like '"+nom+"%'";
            return p.ejecutarConsulta(sql);
        }
        public DataSet buscarProducto(int codigo)
        {
            sql = "select * from producto where idProducto=" + codigo;
            return p.ejecutarConsulta(sql);

        }









    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace Conexion
{
    public class Categoria
    {
        Persistencia p = new Persistencia();
        string sql = "";
        DataSet data = new DataSet();
        public bool insertarCategoria(string nom)
        {
            sql = "Insert into categoria (nombreCategoria) values ('" + nom + "')";
            return p.ejecutarDML(sql);

        }
        public bool eliminarCategoria(int id)
        {
            sql = "Delete from categoria where idCategoria=" + id;
            return p.ejecutarDML(sql); 
        }

        public bool modificarCategoria(int id, string nom)
        {
            sql = "update categoria set nombreCategoria = '" + nom + "' where" + " idCategoria=" + id;
            return p.ejecutarDML(sql); 

        }

        public DataSet listarCategorias(string letra)
        {
            sql = "select *from categoria where nombreCategoria like '"+letra+"%'";
            return p.ejecutarConsulta(sql);
        }
        public DataSet buscarCategoria(int codigo)
        {
            sql = "select *from categoria where idCategoria=" + codigo;
            return p.ejecutarConsulta(sql);

        }
    



    }
}
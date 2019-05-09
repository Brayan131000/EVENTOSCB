using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;


namespace Conexion
{
    public class Persistencia
    {
        MySqlConnection cadena = new MySqlConnection(ConfigurationManager.ConnectionStrings["cadenaConexion"].ConnectionString);
        public bool ejecutarDML(string sql)
        {
            bool ejecuto = false;
            cadena.Open();
            MySqlCommand comando = new MySqlCommand(sql, cadena);
            MySqlDataReader leer = comando.ExecuteReader();
            if (leer.Read())
            {
                ejecuto = true;

            }
            cadena.Close();
            return ejecuto;
        }
       
        public DataSet ejecutarConsulta(string sql)
        {
            DataSet dato = new DataSet();
            cadena.Open();
            MySqlDataAdapter miadatador = new MySqlDataAdapter(sql, cadena);
            miadatador.Fill(dato);
            cadena.Close();
            return dato; 
        }
        public MySqlConnection abrirConexion()
        {
            cadena.Open();
            return cadena;
        }

        public void cerrarConexion()
        {
            cadena.Close();
           
        }
    }
}
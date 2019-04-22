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
        public bool ejecutarDMLProcedimiento(int documento, string nombre, string apellido, string correo, decimal telefono, decimal celular, string usuario, string contraseña, string tipousuario)
        {
            bool ejecuto = false;
            cadena.Open();
            MySqlCommand comando = new MySqlCommand();
            comando.CommandType = CommandType.StoredProcedure;
            comando.Connection = cadena;
            comando.CommandText = "guardarEncargado";
            comando.Parameters.AddWithValue("@numeroDocumento", documento);
            comando.Parameters.AddWithValue("@nombre",nombre);
            comando.Parameters.AddWithValue("@apellido", apellido);
            comando.Parameters.AddWithValue("@correo", correo);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@celular", celular);
            comando.Parameters.AddWithValue("@usuario", usuario);
            comando.Parameters.AddWithValue("@contraseña", contraseña);
            comando.Parameters.AddWithValue("@tipousuario", tipousuario);
            comando.Parameters.AddWithValue("@ireturnvalue", MySqlDbType.Int32);
            comando.Parameters["@ireturnvalue"].Direction = ParameterDirection.ReturnValue;
            //MySqlCommand comando = new MySqlCommand(sql, cadena);
            comando.ExecuteScalar();
            int resultado = Convert.ToInt32(comando.Parameters["@ireturnvalue"].Value);
            
            if (resultado > 0)
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

    }
}
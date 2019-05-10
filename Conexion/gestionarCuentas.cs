using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
namespace Conexion
{
    public class gestionarCuentas
    {
        Persistencia p = new Persistencia();
        public bool ejecutarDMLProcedimiento(int documento, string nombre, string apellido, string correo, decimal telefono, decimal celular, string usuario, string contraseña, string tipo_usuario)
        {

            bool ejecuto = false;
            MySqlCommand comando = new MySqlCommand();
            comando.CommandType = CommandType.StoredProcedure;
            comando.Connection = p.abrirConexion();
            comando.CommandText = "guardarEncargado";
            comando.Parameters.AddWithValue("@numeroDocumento", documento);
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@apellido", apellido);
            comando.Parameters.AddWithValue("@correo", correo);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@celular", celular);
            comando.Parameters.AddWithValue("@usuario", usuario);
            comando.Parameters.AddWithValue("@contraseña", contraseña);
            comando.Parameters.AddWithValue("@tipo_usuario", tipo_usuario);
            comando.Parameters.AddWithValue("@ireturnvalue", MySqlDbType.Int32);
            comando.Parameters["@ireturnvalue"].Direction = ParameterDirection.ReturnValue;
            //MySqlCommand comando = new MySqlCommand(sql, cadena);
            comando.ExecuteScalar();
            int resultado = Convert.ToInt32(comando.Parameters["@ireturnvalue"].Value);

            if (resultado > 0)
            {
                ejecuto = true;

            }

            return ejecuto;
        }

        public bool modificarCuentas(int documento, string nombre, string apellido, string correo, decimal telefono, decimal celular, string usuario, string contraseña, string tipo_usuario)
        {
            bool ejecuto = false;
            int filas = 0;
            MySqlCommand comando = new MySqlCommand();
            comando.CommandType = CommandType.StoredProcedure;
            comando.Connection = p.abrirConexion();
            comando.CommandText = "modificarCuentas";
            comando.Parameters.AddWithValue("@numeroDocumento", documento);
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@apellido", apellido);
            comando.Parameters.AddWithValue("@correo", correo);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@celular", celular);
            comando.Parameters.AddWithValue("@usuario", usuario);
            comando.Parameters.AddWithValue("@contraseña", contraseña);
            comando.Parameters.AddWithValue("@tipo_usuario", tipo_usuario);
            comando.Parameters.AddWithValue("@ireturnvalue", MySqlDbType.Int32);
            comando.Parameters["@ireturnvalue"].Direction = ParameterDirection.ReturnValue;
            //MySqlCommand comando = new MySqlCommand(sql, cadena);
            comando.ExecuteScalar();
            int resultado = Convert.ToInt32(comando.Parameters["@ireturnvalue"].Value);

            if (resultado > 0)
            {
                ejecuto = true;

            }

            return ejecuto;
        }

        public bool eliminarCuentas(int documento)
        {
            bool ejecuto = false;
            int filas = 0;
            MySqlCommand comando = new MySqlCommand();
            comando.CommandType = CommandType.StoredProcedure;
            comando.Connection = p.abrirConexion();
            comando.CommandText = "Eliminar";
            comando.Parameters.AddWithValue("@numeroDocumento", documento);
            comando.Parameters.AddWithValue("@ireturnvalue", MySqlDbType.Int32);
            comando.Parameters["@ireturnvalue"].Direction = ParameterDirection.ReturnValue;
            comando.ExecuteScalar();
            int resultado = Convert.ToInt32(comando.Parameters["@ireturnvalue"].Value);

            if (resultado > 0)
            {
                ejecuto = true;

            }

            return ejecuto;




        }
        public DataSet buscarCuentas
            (int documento)
        {
            DataSet datos = new DataSet();
            MySqlDataAdapter miadaptador = new MySqlDataAdapter();
            //MySqlCommand objSelectCmd = new MySqlCommand();
            MySqlCommand comando = new MySqlCommand();
            comando.Connection = p.abrirConexion();
            comando.CommandText = "buscarCuenta";
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@numeroDocumento", documento).Direction = ParameterDirection.Input;

            miadaptador.SelectCommand = comando;
            miadaptador.Fill(datos);
            p.cerrarConexion();
            return datos;

        }
        public bool crearEmpresa (int nitempresa, string persona, int documentoE, string nombre, string direccion , string telefono,string correo)
        {

            bool ejecuto = false;
            MySqlCommand comando = new MySqlCommand();
            comando.CommandType = CommandType.StoredProcedure;
            comando.Connection = p.abrirConexion();
            comando.CommandText = "crearEmpresa";
            comando.Parameters.AddWithValue("@NitEm", nitempresa);
            comando.Parameters.AddWithValue("@per_clien", persona);
            comando.Parameters.AddWithValue("@idpersona", documentoE);
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@direccion", direccion);
            comando.Parameters.AddWithValue("@correo", correo);
            comando.Parameters.AddWithValue("@telefono_cel", telefono);
            comando.Parameters.AddWithValue("@ireturnvalue", MySqlDbType.Int32);
            comando.Parameters["@ireturnvalue"].Direction = ParameterDirection.ReturnValue;        
            comando.ExecuteScalar();
            int resultado = Convert.ToInt32(comando.Parameters["@ireturnvalue"].Value);

            if (resultado > 0)
            {
                ejecuto = true;

            }

            return ejecuto;
        }
        public bool modificarEmpresa(int nit,string tipoempresa, int documento,string nombre, string direccion,  string correo,string celular)
        {
            bool ejecuto = false;
        
            MySqlCommand comando = new MySqlCommand();
            comando.CommandType = CommandType.StoredProcedure;
            comando.Connection = p.abrirConexion();
            comando.CommandText = "modificarEmpresa";
            comando.Parameters.AddWithValue("@nit", nit);
            comando.Parameters.AddWithValue("@tipoempresa",tipoempresa);
            comando.Parameters.AddWithValue("@documento", documento);
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@direccion", direccion);
            comando.Parameters.AddWithValue("@correo", correo);
            comando.Parameters.AddWithValue("@celular", celular);
            comando.Parameters.AddWithValue("@ireturnvalue", MySqlDbType.Int32);
            comando.Parameters["@ireturnvalue"].Direction = ParameterDirection.ReturnValue;
            //MySqlCommand comando = new MySqlCommand(sql, cadena);
            comando.ExecuteScalar();
            int resultado = Convert.ToInt32(comando.Parameters["@ireturnvalue"].Value);

            if (resultado > 0)
            {
                ejecuto = true;

            }

            return ejecuto;
        }
        public DataSet buscarEmpresa(int documento)
        {
            DataSet datos = new DataSet();
            MySqlDataAdapter miadaptador = new MySqlDataAdapter();
            //MySqlCommand objSelectCmd = new MySqlCommand();
            MySqlCommand comando = new MySqlCommand();
            comando.Connection = p.abrirConexion();
            comando.CommandText = "buscarEmpresa";
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@Nit", documento).Direction = ParameterDirection.Input;

            miadaptador.SelectCommand = comando;
            miadaptador.Fill(datos);
            p.cerrarConexion();
            return datos;

        }
    }
}
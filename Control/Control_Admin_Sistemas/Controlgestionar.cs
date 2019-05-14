using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Conexion;
namespace Control
{
    public class Controlgestionar
    {
        DataSet datos = new DataSet();
        Persistencia p = new Persistencia();
        gestionarCuentas c = new gestionarCuentas(); 
        //Controladores del administrador 
        public bool crearAdmin (int documento,string nombre,string apellido,string correo,decimal telefono,decimal celular, string usuario, string contraseña,string tipousuario,string estado)
        {
            return c.ejecutarDMLProcedimiento(documento, nombre, apellido, correo, telefono, celular, usuario, contraseña, tipousuario,estado);
        }
     


        public DataSet mostrarCuentas()
        {
            DataSet datos = new DataSet();
            string sql = "select a.idN_DocumentoP, a.nombre,a.apellido,a.correo,a.telefono,a.celular,usuario,contraseña,tipo_usuario from persona a, encargado b  where a.idN_DocumentoP = b.idN_DocumentoEn";
            datos = p.ejecutarConsulta(sql);
            return datos;
        }


        public bool modificarAdmin (int documento, string nombre, string apellido, string correo, decimal telefono, decimal celular, string usuario, string contraseña, string tipousuario,string estado)
        {
            return c.modificarCuentas(documento, nombre, apellido, correo, telefono, celular, usuario, contraseña, tipousuario,estado);
        }

        public bool eliminarCategoria(int documento)
        {
            return c.eliminarCuentas(documento);
        }
        public DataSet buscarCuenta(int documento)
        {
            return c.buscarCuentas(documento);
        }

        //Controladores de la empresa

        public bool crearEmpresa(int nitempresa, string persona, int documentoE, string nombre,string direccion, string correo, string telefono,string estado)
        {
            return c.crearEmpresa(nitempresa,persona,documentoE, nombre, direccion, correo,  telefono,estado);
        }

        public DataSet mostrarEmpresa()
        {
            string sql = "select NitEm,Per_clien,idN_DocumentoEn, nombre,direccion,correo,telefono_cel,estado from empresa where NitEm = NitEm";
            datos = p.ejecutarConsulta(sql);
            return datos;
        }
        public DataSet buscarEmpresa(int nit)
        {
            return c.buscarEmpresa(nit);
        }
        public bool modificarEmpresa (int nit, string tipoempresa, int documento, string nombre, string direccion, string correo, string  celular,string estado)
        {
            return c.modificarEmpresa(nit, tipoempresa, documento, nombre, direccion, correo, celular,estado);

        }
    }
} 


using Caja.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Caja.Clases.Modelos
{
    public class ModeloEmpleado
    {
        private Conexion c;
        public ModeloEmpleado()
        {
            c = new Conexion();
        }

        //Metodo para crear Departamento;
        public void crearEmpleado(Empleado em)
        {
            String insert = "EXEC ingreso_empleado '" + em.Nombre + "','" + em.Apellido + "','" + em.Usuario + "','" + em.Password + "',"+em.Id_departamento+"";
            ejecutar(insert);
        }

        private void ejecutar(string consultaSQL)
        {
            c.con.Open();
            c.sen = new SqlCommand(consultaSQL, c.con);
            c.sen.ExecuteNonQuery();
            c.con.Close();
        }
    }
}
using Caja.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Caja.Clases.Modelos
{
    public class ModeloDepartamento
    {
        private Conexion c;
        public ModeloDepartamento()
        {
            c = new Conexion();
        }

        //Metodo para crear Departamento;
        public void crearDepartamento(Departamento d)
        {
            String insert = "EXEC ingreso_depto '" + d.Nombre + "'";
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
using Caja.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Caja.Clases.Modelos
{
    public class ModeloSolicitud
    {
        private Conexion c;

        public ModeloSolicitud()
        {
            c = new Conexion();
        }

        public void crearSolicitud(Solicitud d)
        {
            String insert = "EXEC ingreso_solicitud " + d.Monto_solicitado + ","+d.Id_empleado+","+d.Id_caja+"";
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
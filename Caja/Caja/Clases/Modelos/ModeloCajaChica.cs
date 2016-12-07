using Caja.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Caja.Clases.Modelos
{
    public class ModeloCajaChica
    {
        private Conexion c;

        public ModeloCajaChica()
        {
            c = new Conexion();
        }
        //Metodo para crear Caja Chica;
        public void crearCajaChica(CajaChica cc)
        {
            String insert = "EXEC ingreso_caja '" + cc.Nombre_caja + "'," + cc.Saldo_inicial + "," + cc.Id_empleado + "";
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
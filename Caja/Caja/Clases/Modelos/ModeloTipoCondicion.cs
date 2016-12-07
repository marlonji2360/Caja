using Caja.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Caja.Clases.Modelos
{
    public class ModeloTipoCondicion
    {
        private Conexion c;

        public ModeloTipoCondicion()
        {
            c = new Conexion();
        }

        //Metodo de ingreso de Condiciones
        public void ingresoCondicion(TipoCondicion tc)
        {
            String insert = "EXEC ingreso_tipocondicion " + tc.Montomaximo + ", '"+tc.Condicion+"',"+tc.Id_conceptofactura+"";
            ejecutar(insert);
        }

        private void ejecutar(string insert)
        {
            c.con.Open();
            c.sen = new SqlCommand(insert, c.con);
            c.sen.ExecuteNonQuery();
            c.con.Close();
        }
    }

}
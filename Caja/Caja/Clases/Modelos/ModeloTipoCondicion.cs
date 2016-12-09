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
        public TipoCondicion consultaCondicion(int id_condicion)
        {
            TipoCondicion b = null;

            String select = "select montomaximo, condicion from Tipo_Condicion where concepto_factura_id_conceptofac = " + id_condicion + "";
            c.con.Open();
            c.sen = new SqlCommand(select, c.con);
            c.rs = c.sen.ExecuteReader();

            if (c.rs.Read())
            {
                b = new TipoCondicion();
                b.Montomaximo = float.Parse(c.rs[0].ToString());
                b.Condicion = c.rs[1].ToString();
            }
            c.con.Close();
            return b;
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
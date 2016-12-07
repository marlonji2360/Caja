using Caja.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Caja.Clases.Modelos
{
    public class ModeloConceptoFactura
    {
        private Conexion c;

        public ModeloConceptoFactura()
        {
            c = new Conexion();
        }

        //Metodo para ingresar Concepto de Facturas
        public void ingresoConceptoFactura(Concepto_Factura cf)
        {
            String insert = "EXEC ingreso_conceptofactura '" + cf.Tipoconcepto + "'";
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
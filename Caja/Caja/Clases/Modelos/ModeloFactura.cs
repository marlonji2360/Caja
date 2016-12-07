using Caja.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Caja.Clases.Modelos
{
    public class ModeloFactura
    {
        private Conexion c;

        public ModeloFactura()
        {
            c = new Conexion();
        }
        //Metodo para crear Agregar Facturas;
        public void crearFactura(Factura cc)
        {
            String insert = "EXEC ingreso_factura "+cc.Numerofactura+","+cc.Totalfactura+",'"+cc.Fecha+"','"+cc.Descripcion+"',"+cc.Id_caja+","+cc.Id_solicitud+","+cc.Id_concepto+"";
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
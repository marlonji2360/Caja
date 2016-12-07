using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Caja.Clases.Modelos
{
    public class Conexion
    {
        public SqlConnection con;
        public SqlCommand sen;
        public SqlDataReader rs;

        public Conexion()
        {
            con = new SqlConnection(
                "Data Source = localhost;" +
                "Initial Catalog = Caja;" +
                "Integrated Security = True"
            );
        }
    }
}
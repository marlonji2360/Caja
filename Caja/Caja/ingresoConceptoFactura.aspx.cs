using Caja.Clases.Beans;
using Caja.Clases.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Caja
{
    public partial class ingresoConceptoFactura : System.Web.UI.Page
    {
        private ModeloConceptoFactura mcf;
        protected void Page_Load(object sender, EventArgs e)
        {
            mcf = new ModeloConceptoFactura();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Concepto_Factura cf = new Concepto_Factura();

            cf.Tipoconcepto = TxtConcepto.Text;

            mcf.ingresoConceptoFactura(cf);

            TxtConcepto.Text = "";
            SqlDataSource1.DataBind();
            TablaConceptoFactura.DataBind();

            Response.Redirect("/ingresoConceptoFactura.aspx");
        }
    }
}
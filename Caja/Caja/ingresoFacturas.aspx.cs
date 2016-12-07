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
    public partial class ingresoFacturas : System.Web.UI.Page
    {
        private ModeloFactura mf;
        protected void Page_Load(object sender, EventArgs e)
        {
            mf = new ModeloFactura();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Factura fac = new Factura();

            fac.Numerofactura = int.Parse(TxtNumero.Text);
            fac.Totalfactura = float.Parse(TxtTotal.Text);
            fac.Fecha = DateTime.Parse(TxtFecha.Text);
            fac.Descripcion = TxtDescripcion.Text;
            fac.Id_caja = int.Parse(DropCaja.SelectedValue);
            fac.Id_solicitud = int.Parse(DropSolicitud.SelectedValue);
            fac.Id_concepto = int.Parse(DropConcepto.SelectedValue);

            mf.crearFactura(fac);

            SqlDataSource3.DataBind();
            TablaFacturas.DataBind();

            Response.Redirect("/ingresoFacturas.aspx");
        }
    }
}
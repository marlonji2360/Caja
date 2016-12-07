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
    public partial class ingresoTipoCondicion : System.Web.UI.Page
    {
        private ModeloTipoCondicion mtc;
        protected void Page_Load(object sender, EventArgs e)
        {
            mtc = new ModeloTipoCondicion();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            TipoCondicion tc = new TipoCondicion();

            tc.Montomaximo = float.Parse(TxtMontoMaximo.Text);
            tc.Condicion = DropCondicion.SelectedValue.ToString();
            tc.Id_conceptofactura = int.Parse(DropConcepto.SelectedValue.ToString());

            mtc.ingresoCondicion(tc);

            TxtMontoMaximo.Text = "";
            TxtMontoMaximo.Focus();
            SqlDataSource2.DataBind();
            TablaTipoCondicion.DataBind();
            Response.Redirect("/ingresoTipoCondicion.aspx");
        }
    }
}
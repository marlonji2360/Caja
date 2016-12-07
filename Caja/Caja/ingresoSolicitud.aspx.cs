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
    public partial class ingresoSolicitud : System.Web.UI.Page
    {
        private ModeloSolicitud ms;
        protected void Page_Load(object sender, EventArgs e)
        {
            ms = new ModeloSolicitud();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Solicitud sol = new Solicitud();

            sol.Monto_solicitado = float.Parse(TxtMonto.Text);
            sol.Id_empleado = int.Parse(DropEmpleado.SelectedValue.ToString());
            sol.Id_caja = int.Parse(DropIdCaja.SelectedValue.ToString());

            ms.crearSolicitud(sol);

            TxtMonto.Text = "";
            TxtMonto.Focus();

            Response.Redirect("/ingresoSolicitud.aspx");
        }
    }
}
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
    public partial class ingresoCajaChica : System.Web.UI.Page
    {
        private ModeloCajaChica mcc;
        protected void Page_Load(object sender, EventArgs e)
        {
            mcc = new ModeloCajaChica();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            CajaChica cc = new CajaChica();

            cc.Nombre_caja = TxtNombre.Text;
            cc.Saldo_inicial = float.Parse(TxtSaldo.Text);
            cc.Id_empleado = int.Parse(DropEmpleado.SelectedValue);

            mcc.crearCajaChica(cc);

            TxtSaldo.Text = "";
            TxtNombre.Text = "";
            Response.Redirect("/ingresoCajaChica.aspx");
        }
    }
}
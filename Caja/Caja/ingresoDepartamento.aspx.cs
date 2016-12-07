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
    public partial class ingresoDepartamento : System.Web.UI.Page
    {
        private ModeloDepartamento md;
        protected void Page_Load(object sender, EventArgs e)
        {
            md = new ModeloDepartamento();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Departamento depto = new Departamento();

            depto.Nombre = TxtDepartamento.Text;

            md.crearDepartamento(depto);

            TxtDepartamento.Text = "";
            TxtDepartamento.Focus();
            SqlDataSource1.DataBind();
            TablaDepartamento.DataBind();
            Response.Redirect("/ingresoDepartamento.aspx");
        }
    }
}
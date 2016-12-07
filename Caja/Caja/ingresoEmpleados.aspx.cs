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
    public partial class ingresoEmpleados : System.Web.UI.Page
    {
        private ModeloEmpleado me;
        protected void Page_Load(object sender, EventArgs e)
        {
            me = new ModeloEmpleado();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Empleado em = new Empleado();

            em.Apellido = TxtApellido.Text;
            em.Nombre = TxtNombre.Text;
            em.Password = TxtPassword.Text;
            em.Usuario = TxtUsuario.Text;
            em.Id_departamento = int.Parse(DropDepto.SelectedValue);

            me.crearEmpleado(em);

            TxtUsuario.Text = "";
            TxtPassword.Text = "";
            TxtNombre.Text = "";
            TxtApellido.Text = "";

            SqlDataSource2.DataBind();
            TablaEmpleados.DataBind();

            Response.Redirect("/ingresoEmpleados.aspx");
        }
    }
}
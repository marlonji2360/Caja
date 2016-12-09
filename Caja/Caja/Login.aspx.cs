using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Caja
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (this.ValidaFormulario())
            {
                this.lblMensajes.Text = "";
                ReferenciaServicioUsuario.ServicioAutSoapClient nuevaReferenciaServicio = new ReferenciaServicioUsuario.ServicioAutSoapClient();

                if (nuevaReferenciaServicio.AutetnticacionUsuario(txtNombreUsuario.Text.Trim(),this.txtClave.Text.Trim()))
                {
                    Response.Redirect("/Default.aspx");
                }
                else
                {
                    lblMensajes.Text = "Usuario o password invalido";
                }

            }
           



        }
        private bool ValidaFormulario()
        {
            if(!string.IsNullOrWhiteSpace(this.txtNombreUsuario.Text) && !string.IsNullOrWhiteSpace(this.txtClave.Text))
            {
                
                return true;
            }
            else
            {
                this.lblMensajes.Text = "El nombre de usuario son obligatorios";
                return false;
            }
        }
    }
}
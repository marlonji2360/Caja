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
        private ModeloTipoCondicion mtc;
        private float montofactura;
        private float montocondicion;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            //Creacion de Instancias
            mf = new ModeloFactura();
            mtc = new ModeloTipoCondicion();
            

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Factura fac = new Factura();

            //Validacion del DropDownList del Concepto
            if (string.IsNullOrEmpty(DropConcepto.SelectedValue))
            {
                Response.Write("<script>alert('Campo Descripcion Obligatorio');</script>");
                return;
            }

            //Validacion del campo descripcion, este hace un insert cuando se cumple ambas condiciones
            if (TxtDescripcion.Visible==true && !string.IsNullOrEmpty(TxtDescripcion.Text))
            {
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
            //Hace insert si el campo descripcion no es obligatorio
            if (TxtDescripcion.Visible == false) 
            {
                
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
            //Si ambas no se cumplen quiere decir que el campo Descripcion es obligatorio
            else
            {
                Response.Write("<script>alert('Campo Descripcion Obligatorio');</script>");
            }


        }

        protected void DropConcepto_SelectedIndexChanged(object sender, EventArgs e)
        {

            TipoCondicion b = mtc.consultaCondicion(int.Parse(DropConcepto.SelectedValue));
            //Validaciones del campo Descripcion
            if (b != null)
            {
                montocondicion = b.Montomaximo;
                montofactura = float.Parse(TxtTotal.Text);
                
                //Si la consulta de la Condicion equivale a lo siguiente: muestra o no el campo Descripcion
                if (b.Condicion.Equals("<"))
                {
                    if (montofactura < montocondicion)
                    {
                        TxtDescripcion.Visible = true;
                    }
                    else
                    {
                        TxtDescripcion.Visible = false;
                    }
                }
                if (b.Condicion.Equals(">"))
                {
                    if (montofactura > montocondicion)
                    {
                        TxtDescripcion.Visible = true;
                    }
                    else
                    {
                        TxtDescripcion.Visible = false;
                    }
                }
                if (b.Condicion.Equals("<="))
                {
                    if (montofactura > montocondicion)
                    {
                        TxtDescripcion.Visible = true;
                    }
                    else
                    {
                        TxtDescripcion.Visible = false;
                    }
                }
                if (b.Condicion.Equals(">="))
                {
                    if (montofactura > montocondicion)
                    {
                        TxtDescripcion.Visible = true;
                    }
                    else
                    {
                        TxtDescripcion.Visible = false;
                    }
                }
               
            }
            else
            {
                TxtDescripcion.Visible = false;
            }


        }
    }
}
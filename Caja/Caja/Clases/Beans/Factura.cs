using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caja.Clases.Beans
{
    public class Factura
    {
        private int id_factura;
        private int numerofactura;
        private float totalfactura;
        private DateTime fecha;
        private string descripcion;
        private int id_caja;
        private int id_solicitud;
        private int id_concepto;

        public int Id_factura
        {
            get
            {
                return id_factura;
            }

            set
            {
                id_factura = value;
            }
        }

        public int Numerofactura
        {
            get
            {
                return numerofactura;
            }

            set
            {
                numerofactura = value;
            }
        }

        public float Totalfactura
        {
            get
            {
                return totalfactura;
            }

            set
            {
                totalfactura = value;
            }
        }

        public DateTime Fecha
        {
            get
            {
                return fecha;
            }

            set
            {
                fecha = value;
            }
        }

        public string Descripcion
        {
            get
            {
                return descripcion;
            }

            set
            {
                descripcion = value;
            }
        }

        public int Id_caja
        {
            get
            {
                return id_caja;
            }

            set
            {
                id_caja = value;
            }
        }

        public int Id_solicitud
        {
            get
            {
                return id_solicitud;
            }

            set
            {
                id_solicitud = value;
            }
        }

        public int Id_concepto
        {
            get
            {
                return id_concepto;
            }

            set
            {
                id_concepto = value;
            }
        }
    }
}
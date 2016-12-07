using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caja.Clases.Beans
{
    public class Concepto_Factura
    {
        private int id_concepto_fac;
        private string tipoconcepto;

        public int Id_concepto_fac
        {
            get
            {
                return id_concepto_fac;
            }

            set
            {
                id_concepto_fac = value;
            }
        }

        public string Tipoconcepto
        {
            get
            {
                return tipoconcepto;
            }

            set
            {
                tipoconcepto = value;
            }
        }
    }
}
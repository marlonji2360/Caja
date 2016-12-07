using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caja.Clases.Beans
{
    public class TipoCondicion
    {
        private int id_condicion;
        private float montomaximo;
        private string condicion;
        private int id_conceptofactura;

        public int Id_condicion
        {
            get
            {
                return id_condicion;
            }

            set
            {
                id_condicion = value;
            }
        }

        public float Montomaximo
        {
            get
            {
                return montomaximo;
            }

            set
            {
                montomaximo = value;
            }
        }

        public string Condicion
        {
            get
            {
                return condicion;
            }

            set
            {
                condicion = value;
            }
        }

        public int Id_conceptofactura
        {
            get
            {
                return id_conceptofactura;
            }

            set
            {
                id_conceptofactura = value;
            }
        }
    }
}
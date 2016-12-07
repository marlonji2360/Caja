using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caja.Clases.Beans
{
    public class Solicitud
    {
        private int id_solicitud;
        private float monto_solicitado;
        private DateTime fecha;
        private int id_empleado;
        private int id_caja;
        private int id_estado;

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

        public float Monto_solicitado
        {
            get
            {
                return monto_solicitado;
            }

            set
            {
                monto_solicitado = value;
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

        public int Id_empleado
        {
            get
            {
                return id_empleado;
            }

            set
            {
                id_empleado = value;
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

        public int Id_estado
        {
            get
            {
                return id_estado;
            }

            set
            {
                id_estado = value;
            }
        }
    }
}
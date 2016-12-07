using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caja.Clases.Beans
{
    public class CajaChica
    {
        private int id_caja;
        private string nombre_caja;
        private float saldo_inicial;
        private DateTime fecha;
        private float saldo;
        private int id_empleado;
        private int id_estado;

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

        public string Nombre_caja
        {
            get
            {
                return nombre_caja;
            }

            set
            {
                nombre_caja = value;
            }
        }

        public float Saldo_inicial
        {
            get
            {
                return saldo_inicial;
            }

            set
            {
                saldo_inicial = value;
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

        public float Saldo
        {
            get
            {
                return saldo;
            }

            set
            {
                saldo = value;
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
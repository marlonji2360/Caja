using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ServicioAutenticacion
{
    /// <summary>
    /// Summary description for ServicioAut
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ServicioAut : System.Web.Services.WebService
    {
        //Metodo para verificar si existe un Usuario el cual nos devuelve Verdadero o Falso si encuentra alguno registrado
        [WebMethod]
        public Boolean AutetnticacionUsuario(string nombreUsuario, string claveUsuario)
        {
            try
            {

                data.EmpleadosEntities nuevoEmpleadoEntities = new data.EmpleadosEntities();
                int contadorEmpleado = 0;
                //Realizamos la consulta para de validacion de usuario si es >0 significa que encuentra una coincidencia
                contadorEmpleado = (from tempUsuario in nuevoEmpleadoEntities.Empleados
                                    where tempUsuario.usuario.Equals(nombreUsuario) && tempUsuario.password.Equals(claveUsuario)
                                    select tempUsuario).Count();
                if (contadorEmpleado > 0)
                {
                    //Encuentra Usuario y Password
                    return true;
                }
                else
                {
                    //No encuentra Nada
                    return false;
                }

            }
            catch
            {
                return false;
            }
        }
    }
}

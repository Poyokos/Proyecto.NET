using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class SitioCollection
    {
        public List<SitioTuristico> LeerTodos()
        {
            return GenerarLista(CommonBC.BaseDeDatos.sitio.ToList<DALC.sitio>());
        }

        private List<SitioTuristico> GenerarLista(List<DALC.sitio> listaDALC)
        {
            List<SitioTuristico> listaON = new List<SitioTuristico>();

            foreach (DALC.sitio registro in listaDALC)
            {
                SitioTuristico sitio = new SitioTuristico();

                sitio.IdSitio = registro.idsitio;
                sitio.Nombre = registro.nombre;
                sitio.Direccion = registro.direccion;
                sitio.Entrada = registro.entrada;
                sitio.Salida = registro.salida;
                sitio.EsGratis = Convert.ToChar(registro.gratuito);
                sitio.TipoExposicion = sitio.EnumExposicion(registro.exposicion_tipo);

                listaON.Add(sitio);
            }

            return listaON;
        }
    }
}

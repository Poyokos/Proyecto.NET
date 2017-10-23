using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class ActividadCollection
    {
        public List<Actividad> LeerTodos()
        {
            return GenerarLista(CommonBC.BaseDeDatos.actividad.ToList<DALC.actividad>());
        }

        private List<Actividad> GenerarLista(List<DALC.actividad> listaDALC)
        {
            List<Actividad> listaON = new List<Actividad>();

            foreach (DALC.actividad registro in listaDALC)
            {
                Actividad act = new Actividad();

                act.idActividad = registro.idactividad;

                //Crear objetos para ingresarlos como instancias
                Turista t = new Turista();
                t.Ndocumento = registro.turista_documento;
                t.Read();
                SitioTuristico s = new SitioTuristico();
                s.IdSitio = registro.sitio_idsitio;
                s.Read();

                act.Visitante = t;
                act.Lugar = s;
                act.FechaDeCritica = registro.fechadecritica;
                act.Nota = (double)registro.nota;
                act.Observacion = registro.observacion;

                listaON.Add(act);
            }

            return listaON;
        }
    }
}

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
                //

                listaON.Add(act);
            }

            return listaON;
        }
    }
}

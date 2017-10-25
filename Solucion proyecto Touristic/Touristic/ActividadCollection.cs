using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class ActividadCollection
    {
        public double SumaNota = 0;

        public List<Actividad> LeerTodos()
        {
            return GenerarLista(CommonBC.BaseDeDatos.actividad.ToList<DALC.actividad>());
        }

        //Obetener una lista filtrada según el id del lugar ingresado
        public List<Actividad> ListaPorLugar(int idSitio)
        {
            return GenerarLista(CommonBC.BaseDeDatos.actividad.Where(a => a.sitio_idsitio == idSitio).ToList<DALC.actividad>());
        }

        private List<Actividad> GenerarLista(List<DALC.actividad> listaDALC)
        {
            List<Actividad> listaBC = new List<Actividad>();

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
                SumaNota = SumaNota + act.Nota;

                listaBC.Add(act);
            }

            return listaBC;
        }
    }
}

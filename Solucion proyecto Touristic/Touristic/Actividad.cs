using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class Actividad
    {
        public int idActividad { get; set; }
        public Turista Visitante { get; set; }
        public SitioTuristico Lugar { get; set; }
        public DateTime FechaDeCritica { get; set; }
        public double Nota { get; set; }
        public string Observacion { get; set; }
        public string NombreTurista { get { return Visitante.Nombre; } }
        public string Publicacion { get { return FechaDeCritica.ToString("dd/MM/yyyy"); } }

        public Actividad()
        {
            this.Init();
        }

        private void Init()
        {
            FechaDeCritica = DateTime.Today;
        }

        //Entregar información de actividad
        public override string ToString()
        {
            return string.Format("Visitante: {0} Nacionalidad: {1} Comentario: {2} Nota: {3}",
                Visitante.Nombre,
                Visitante.Nacionalidad,
                Observacion,
                Nota);
        }

        //CRUD - Herramientas para trabajar con la tabla Turista en db
        public bool Create()
        {
            DALC.actividad act = new DALC.actividad();

            try
            {
                act.fechadecritica = FechaDeCritica;
                act.nota = Convert.ToDecimal(Nota);
                act.observacion = Observacion;
                act.turista = CommonBC.BaseDeDatos.turista.First(t => t.documento == Visitante.Ndocumento);
                act.sitio = CommonBC.BaseDeDatos.sitio.First(s => s.idsitio == Lugar.IdSitio);

                CommonBC.BaseDeDatos.actividad.Add(act);
                CommonBC.BaseDeDatos.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                CommonBC.BaseDeDatos.actividad.Remove(act);
                return false;
            }
        }
    }
}
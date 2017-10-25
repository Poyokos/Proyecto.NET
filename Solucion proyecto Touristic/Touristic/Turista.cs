using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class Turista
    {
        public string Nombre { get; set; }
        public int Edad { get; set; }
        public string Ndocumento { get; set; }
        public string Nacionalidad { get; set; }

        public Turista()
        {
            this.Init();
        }

        private void Init()
        {
            Nombre = string.Empty;
            Edad = 0;
            Ndocumento = string.Empty;
            Nacionalidad = string.Empty;
        }

        //CRUD - Herramientas para trabajar con la tabla Turista en db
        public bool Create()
        {
            DALC.turista visitante = new DALC.turista();

            try
            {
                visitante.nombre = Nombre;
                visitante.edad = Edad;
                visitante.documento = Ndocumento;
                visitante.nacionalidad = Nacionalidad;

                CommonBC.BaseDeDatos.turista.Add(visitante);
                CommonBC.BaseDeDatos.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                CommonBC.BaseDeDatos.turista.Remove(visitante);
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                //Traer el primer dato que el documento sea igual al del objeto
                DALC.turista visitante = CommonBC.BaseDeDatos.turista.First(turista => turista.documento == Ndocumento);

                //Actualizar con objeto traido
                Nombre = visitante.nombre;
                Edad = visitante.edad;
                Nacionalidad = visitante.nacionalidad;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class Calificaciones
    {
        public double Atractivo { get; set; }
        public double Autenticidad { get; set; }
        public double Singularidad { get; set; }
        public double Mult_actividades { get; set; }
        public double Total
        {
            get
            {
                return Math.Round((Atractivo + Autenticidad + Singularidad + Mult_actividades) / 4, 1);
            }
        }

        public Calificaciones()
        {
            this.Init();
        }

        public void Init()
        {
            Atractivo = 0;
            Autenticidad = 0;
            Singularidad = 0;
            Mult_actividades = 0;
        }
    }
}

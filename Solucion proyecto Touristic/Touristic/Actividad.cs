﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class Actividad
    {
        public Turista Visitante { get; set; }
        public SitioTuristico Lugar { get; set; }
        public DateTime FechaDeCritica { get; set; }
        public Calificaciones Nota { get; set; }
        public string Observacion { get; set; }
        public Atraccion Atracciones { get; set; }

        public Actividad()
        {
            this.Init();
        }

        private void Init()
        {
            FechaDeCritica = DateTime.Today;
        }
    }
}

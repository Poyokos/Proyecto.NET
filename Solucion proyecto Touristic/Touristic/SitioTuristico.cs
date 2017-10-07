using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class SitioTuristico
    {
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public TimeSpan Entrada { get; set; }
        public TimeSpan Salida { get; set; }
        public Gratuito EsGratis { get; set; }
        public List<Atraccion> Atracciones { get; set; }
    }
}

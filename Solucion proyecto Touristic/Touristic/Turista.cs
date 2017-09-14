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
    }
}

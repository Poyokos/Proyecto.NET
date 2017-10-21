using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Touristic.DALC;

namespace Touristic
{
    public static class CommonBC
    {
        private static TouristicEntities _baseDeDatos;

        public static TouristicEntities BaseDeDatos
        {
            get
            {
                if (_baseDeDatos == null)
                {
                    _baseDeDatos = new TouristicEntities();
                }

                return _baseDeDatos;
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Touristic
{
    public class SitioTuristico
    {
        public int IdSitio { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public TimeSpan Entrada { get; set; }
        public TimeSpan Salida { get; set; }
        public char EsGratis { get; set; }
        public Exposicion TipoExposicion { get; set; }

        //CRUD - Herramientas para trabajar con la tabla Turista en db
        public bool Create()
        {
            DALC.sitio sitio = new DALC.sitio();

            try
            {
                sitio.nombre = Nombre;
                sitio.direccion = Direccion;
                sitio.entrada = Entrada;
                sitio.salida = Salida;
                sitio.gratuito = EsGratis.ToString();
                sitio.exposicion_tipo = TipoExposicion.ToString();

                CommonBC.BaseDeDatos.sitio.Add(sitio);
                CommonBC.BaseDeDatos.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                CommonBC.BaseDeDatos.sitio.Remove(sitio);
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                //Obetener sitio de db
                DALC.sitio sitio = CommonBC.BaseDeDatos.sitio.First(lugar => lugar.idsitio == IdSitio);

                Nombre = sitio.nombre;
                Direccion = sitio.direccion;
                Entrada = sitio.entrada;
                Salida = sitio.salida;
                EsGratis = Convert.ToChar(sitio.gratuito);
                TipoExposicion = this.EnumExposicion(sitio.exposicion_tipo);

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update()
        {
            try
            {
                DALC.sitio sitio = CommonBC.BaseDeDatos.sitio.First(s => s.idsitio == IdSitio);

                sitio.nombre = Nombre;
                sitio.direccion = Direccion;
                sitio.entrada = Entrada;
                sitio.salida = Salida;
                sitio.gratuito = EsGratis.ToString();
                sitio.exposicion_tipo = TipoExposicion.ToString();

                CommonBC.BaseDeDatos.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public Exposicion EnumExposicion(string tipo)
        {
            if (tipo == "Interior")
            {
                return Exposicion.Interior;
            }
            else if (tipo == "Exterior")
            {
                return Exposicion.Exterior;
            }
            else
            {
                return Exposicion.Ambos;
            }
        }
    }
}

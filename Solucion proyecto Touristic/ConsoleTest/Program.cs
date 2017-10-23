using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Touristic;

namespace ConsoleTest
{
    class Program
    {
        static void Main(string[] args)
        {
            //Creacion de instancias para prueba
            Actividad actividad = new Actividad();
            Turista turista = new Turista();
            SitioTuristico sitio = new SitioTuristico();

            //Creacion turista
            turista.Edad = 25;
            turista.Nacionalidad = "Chileno";
            turista.Ndocumento = "184651041";
            turista.Nombre = "Diego Lufi";

            if (turista.Create())
            {
                Console.WriteLine("Se ha creado el el turista");
            }
            else
            {
                Console.WriteLine("No se ha creado el turista");
            }

            Console.ReadKey();

            //Creacion del sitio
            sitio.Direccion = "La Pincoya 8794";
            sitio.Nombre = "X Zone";
            sitio.EsGratis = 'N';
            sitio.Entrada = TimeSpan.Parse("10:00");
            sitio.Salida = TimeSpan.Parse("20:00");
            sitio.TipoExposicion = Exposicion.Ambos;

            if (sitio.Create())
            {
                Console.WriteLine("Se ha creado el sitio");
            }
            else
            {
                Console.WriteLine("No se ha creado el sitio");
            }

            Console.ReadKey();

            //Creacion de la Actividad

            actividad.FechaDeCritica = DateTime.Today;
            actividad.Nota = 5;
            actividad.Observacion = "Excelente estacion de juegos";
            actividad.Lugar = sitio;
            actividad.Visitante = turista;

            if (actividad.Create())
            {
                Console.WriteLine("Se ha creado la actividad");
            }
            else
            {
                Console.WriteLine("No se ha creado la actividad");
            }

            Console.ReadKey();
        }
    }
}

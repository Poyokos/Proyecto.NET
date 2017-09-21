using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        public void Cargar()
        {
            ActividadCollection coleccion = new ActividadCollection();
            coleccion = (ActividadCollection)Session["miColeccion"];
            double promedio = 0;
            if (coleccion != null)
            {
                foreach (Actividad tmpact in coleccion)
                {
                    ListItem lista = new ListItem(string.Format("Comentario: {0}                Nota: {1}          Nombre: {2}", tmpact.Observacion, tmpact.Nota.Total,tmpact.Visitante.Nombre));
                    lbResumen.Items.Add(lista);
                }

                lblCantComentarios.Text = string.Format("{0}",coleccion.Count);

                foreach (Actividad tmpact in coleccion)
                {
                    promedio = promedio + tmpact.Nota.Total;
                }

                promedio = Math.Round((promedio / coleccion.Count),1);

                lblPromedio.Text = string.Format("{0}",promedio);
            }
            
        }
    }
}
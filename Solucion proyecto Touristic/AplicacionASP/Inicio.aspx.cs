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
            if (coleccion != null)
            {
                foreach (Actividad tmpact in coleccion)
                {
                    ListItem lista = new ListItem(string.Format("{0}       {1}", tmpact.Observacion, tmpact.Nota.Total));
                    lbResumen.Items.Add(lista);
                }
            }
            
        }
    }
}
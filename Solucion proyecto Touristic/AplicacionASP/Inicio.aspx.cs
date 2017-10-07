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
        public SitioCollection Sitios
        {
            get
            {
                if (Session["lugares"] == null)
                {
                    Session["lugares"] = new SitioCollection();
                }

                return (SitioCollection)Session["lugares"];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
            if (!IsPostBack)
            {
                foreach (var tempSitio in Sitios)
                {
                    ListItem item = new ListItem(string.Format("{0}", tempSitio.Nombre));
                    ddlLugares.Items.Add(item);
                }
            }
        }


        public void Cargar()
        {
            ActividadCollection coleccion = new ActividadCollection();
            coleccion = (ActividadCollection)Session["miColeccion"];

            double promedio = 0;
            if (coleccion != null)
            {
                //Cargar listBox con comentarios
                lbResumen.DataSource = coleccion;
                lbResumen.DataBind();

                lblCantComentarios.Text = string.Format("{0}",coleccion.Count);

                foreach (Actividad tmpact in coleccion)
                {
                    promedio = promedio + tmpact.Nota.Total;
                }

                promedio = Math.Round((promedio / coleccion.Count),1);

                lblPromedio.Text = string.Format("{0}", promedio);
            }
            Session["puntaje"] = 0.0;
        }

        protected void ddlLugares_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Cambiar items de atracciones según lugar
            //ddlAtraccion.Items.Clear();

            //foreach (var tempSitio in Sitios)
            //{
            //    if (ddlLugares.SelectedValue == tempSitio.Nombre)
            //    {
            //        foreach (var item in tempSitio.Atracciones)
            //        {
            //            ListItem op = new ListItem(string.Format("{0}", item.Nombre));
            //            ddlAtraccion.Items.Add(op);
            //        }
            //    }
            //}
        }
    }
}
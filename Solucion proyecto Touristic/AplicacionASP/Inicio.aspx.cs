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

        public ActividadCollection Actividades
        {
            get
            {
                if (Session["miColeccion"] == null)
                {
                    Session["miColeccion"] = new ActividadCollection();
                }

                return (ActividadCollection)Session["miColeccion"];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Cargar comentarios
            if (!IsPostBack)
            {
                this.Llenarddl();
                Cargar();
            }
        }

        private void Llenarddl()
        {
            foreach (var tempSitio in Sitios)
            {
                ListItem item = new ListItem(string.Format("{0}", tempSitio.Nombre));
                ddlLugares.Items.Add(item);
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
        }

        //Cambiar comentarios según item seleccionado
        protected void ddlLugares_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbResumen.Items.Clear();

            //Crear colecciones una con la de session y la otra filtrada
            ActividadCollection localColeccion = new ActividadCollection();
            string direccion = string.Empty;
            string gratis = string.Empty;

            double promedio = 0;
            if (Actividades != null)
            {
                foreach (var tempAct in Actividades)
                {
                    if (tempAct.Lugar.Nombre.Equals(ddlLugares.SelectedValue))
                    {
                        localColeccion.Add(tempAct);
                        direccion = tempAct.Lugar.Direccion;
                        gratis = tempAct.Lugar.EsGratis.ToString();
                        promedio = promedio + tempAct.Nota.Total;

                    }
                }

                //Mostrar datos de haberlos
                if (promedio >= 1)
                {
                    //Entregar información del lugar
                    lblDireccion.Text = direccion;
                    lblGratis.Text = gratis;

                    //Cantidad comentarios
                    lblCantComentarios.Text = string.Format("{0}", localColeccion.Count);

                    //Prm de nota general
                    promedio = Math.Round((promedio / localColeccion.Count), 1);

                    lblPromedio.Text = string.Format("{0}", promedio);

                    //Cargar comentarios filtrados
                    lbResumen.Items.Clear();
                    lbResumen.DataSource = localColeccion;
                    lbResumen.DataBind();
                }
            }
        }
    }
}
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
            if (!IsPostBack)
            {
                this.Llenarddl();
            }
        }

        private void Llenarddl()
        {
            foreach (var tempSitio in Sitios.LeerTodos())
            {
                ListItem item = new ListItem(string.Format("{0}", tempSitio.Nombre));
                ddlLugares.Items.Add(item);
            }
        }

        //Cambiar comentarios según item seleccionado
        protected void ddlLugares_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbResumen.Items.Clear();

            //Crear colecciones una con la de session y la otra filtrada
            List<Actividad> localColeccion = new List<Actividad>();
            string direccion = string.Empty;
            string gratis = string.Empty;

            double promedio = 0;
            if (Actividades != null)
            {
                foreach (var tempAct in Actividades.LeerTodos())
                {
                    if (tempAct.Lugar.Nombre.Equals(ddlLugares.SelectedValue))
                    {
                        localColeccion.Add(tempAct);
                        direccion = tempAct.Lugar.Direccion;
                        gratis = tempAct.Lugar.EsGratis.ToString();
                        promedio = promedio + tempAct.Nota;

                    }
                }

                //Mostrar datos de haberlos
                if (localColeccion.Count >= 0)
                {
                    //Entregar información del lugar
                    lblDireccion.Text = direccion;
                    if (gratis.ToLower() == "S")
                    {
                        lblGratis.Text = "¡Sí!  =D";
                    } else
                    {
                        lblGratis.Text = "¡No! :c";
                    }

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
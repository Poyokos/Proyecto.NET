using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class Agregar : System.Web.UI.Page
    {
        public ActividadCollection miColeccion
        {
            get
            {
                if (Session["miColeccion"] == null)
                {
                    Session["miColeccion"] = new ActividadCollection();
                }

                return (ActividadCollection)Session["miColeccion"];
            }

            set
            {
                Session["miColeccion"] = value;
            }
        }

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
            if (Session["puntaje"] != null)
            {
                double nota = (double)Session["puntaje"];
                txtNota.Text = nota.ToString();
            }

            if (!IsPostBack)
            {
                this.cargarDdl();
            }
        }

        private void cargarDdl()
        {
            foreach (var tempSitio in Sitios)
            {
                ListItem item = new ListItem(string.Format("{0}", tempSitio.Nombre));
                ddlLugares.Items.Add(item);
            }
        }

        protected void btnLugar_Click(object sender, EventArgs e)
        {
            Server.Transfer("Lugares.aspx");
        }


        protected void btnNota_Click(object sender, EventArgs e)
        {
            Server.Transfer("Calificacion_Lugar.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Server.Transfer("IngresoTurista.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Server.Transfer("Inicio.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Actividad actividad = new Actividad();
            actividad.Nota = (Calificaciones)Session["_Calif"];
            actividad.Visitante = (Turista)Session["miTurista"];
            actividad.Observacion = txtObservacion.Text;
            miColeccion.Add(actividad);
            Server.Transfer("Inicio.aspx");
        }
    }
}
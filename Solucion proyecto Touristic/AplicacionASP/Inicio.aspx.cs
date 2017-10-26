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
            if (!IsPostBack)
            {
                this.CargarLugares();
                CargarInformacion();
            }
        }

        private void CargarLugares()
        {
            SitioCollection lista = new SitioCollection();

            ddlLugares.DataTextField = "Nombre";
            ddlLugares.DataValueField = "IdSitio";
            ddlLugares.DataSource = lista.LeerTodos();
            ddlLugares.DataBind();
            ddlLugares.SelectedIndex = 0;
        }

        //Cambiar comentarios según item seleccionado
        protected void ddlLugares_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarInformacion();
        }

        private void CargarInformacion()
        {
            ActividadCollection lista = new ActividadCollection();

            int idSitio = int.Parse(ddlLugares.SelectedValue);

            SitioTuristico sitio = new SitioTuristico();
            sitio.IdSitio = idSitio;
            if (sitio.Read())
            {
                lblDireccion.Text = sitio.Direccion;
                if (sitio.EsGratis == 'S') { lblGratis.Text = "Sí"; } else { lblGratis.Text = "No"; }
            }
            //Carga el List View Resumen con todas las Actividades segun Sitio
            lvResumen.DataSource = lista.ListaPorLugar(idSitio);
            lvResumen.DataBind();
            //Muestra el Promedio de notas de las Actividades segun Sitio
            double prm = Math.Round(lista.Promedio, 1);
            lblPromedio.Text = prm.ToString();
            //lblPromedio.Text = string.Format("{0}", lista.Promedio);
            //Muestra cantidad Total de Comentarios segung Sitio
            lblCantComentarios.Text = lvResumen.Items.Count.ToString();
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class Eliminar : System.Web.UI.Page
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
        private void CargarInformacion()
        {
            ActividadCollection lista = new ActividadCollection();

            int idSitio = int.Parse(ddlLugares.SelectedValue);

            SitioTuristico sitio = new SitioTuristico();
            sitio.IdSitio = idSitio;
            
            //Carga el List View Resumen con todas las Actividades segun Sitio
            lvResumen.DataSource = lista.ListaPorLugar(idSitio);
            lvResumen.DataBind();
           
        }

        protected void ddlLugares_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarInformacion();
        }
    }
}
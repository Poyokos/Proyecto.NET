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
            }
        }

        private void CargarLugares()
        {
            SitioCollection lista = new SitioCollection();

            ddlLugares.DataTextField = "nombre";

            ddlLugares.DataSource = lista.LeerTodos();
            ddlLugares.DataBind();
        }

        //Cambiar comentarios según item seleccionado
        protected void ddlLugares_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lvResumen.Items.Clear();

            ActividadCollection lista = new ActividadCollection();

            int idSitio = ddlLugares.SelectedIndex;

            SitioTuristico sitio = new SitioTuristico();

            if (sitio.Read())
            {
                lblDireccion.Text = sitio.Direccion;
                if (sitio.EsGratis == 'S') { lblGratis.Text = "Sí"; } else { lblGratis.Text = "No"; }
            }

            lvResumen.DataSource = lista.ListaPorLugar(idSitio);
            lvResumen.DataBind();
            lblPromedio.Text = string.Format("{0}", lista.SumaNota / lvResumen.Items.Count);
            lblCantComentarios.Text = lvResumen.Items.Count.ToString();
        }
    }
}
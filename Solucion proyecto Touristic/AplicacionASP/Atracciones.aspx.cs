using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class Atracciones : System.Web.UI.Page
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
            set
            {
                Session["lugares"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (var tempSitio in Sitios)
                {
                    ListItem item = new ListItem(string.Format("{0}", tempSitio.Nombre));
                    ddlLugares.Items.Add(item);
                }
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Atraccion nuevo = new Atraccion();

            nuevo.Nombre = txtNombre.Text;
            
            foreach (var tempSitio in Sitios)
            {
                if (tempSitio.Nombre.Equals(ddlLugares.SelectedValue))
                {
                    tempSitio.Atracciones.Add(nuevo);
                }
            }
        }
    }
}
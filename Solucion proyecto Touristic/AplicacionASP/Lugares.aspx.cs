using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class Lugares : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDDl();
            }            
        }

        private void CargarDDl()
        {
            ddApertura.Items.Add("AM");
            ddApertura.Items.Add("PM");
            ddClausura.Items.Add("AM");
            ddClausura.Items.Add("PM");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Server.Transfer("Agregar.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            
        }
    }
}
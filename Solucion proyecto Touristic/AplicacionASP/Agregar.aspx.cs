using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionASP
{
    public partial class Agregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLugar_Click(object sender, EventArgs e)
        {
            Server.Transfer("Lugares.aspx");
        }

        protected void rbSi_CheckedChanged(object sender, EventArgs e)
        {
            if (rbSi.Checked)
            {
                btnAtraccion.Enabled = true;
            }
            else
            {
                btnAtraccion.Enabled = false;
            }
        }

        protected void btnNota_Click(object sender, EventArgs e)
        {
            Server.Transfer("Calificacion.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Server.Transfer("IngresoTurista.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Server.Transfer("Inicio.aspx");
        }
    }
}
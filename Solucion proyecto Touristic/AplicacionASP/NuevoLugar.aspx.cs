using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class NuevoLugar : System.Web.UI.Page
    {
        //Campo con lugares en agregados sesión
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

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Server.Transfer("Agregar.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            SitioTuristico sitio = new SitioTuristico();

            sitio.Nombre = txtNombre.Text;
            sitio.Direccion = txtDireccion.Text;

            //Validar si los minutos estan en blanco dejarlos en 0
            string minOpen = "00";
            string minClose = "00";
            if (mEntrada.Text != string.Empty)
            {
                minOpen = mEntrada.Text;
            }
            if (mSalida.Text != string.Empty)
            {
                minClose = mSalida.Text;
            }

            sitio.Entrada = TimeSpan.Parse(string.Format("{0}:{1}", hEntrada.Text, minOpen));
            sitio.Salida = TimeSpan.Parse(string.Format("{0}:{1}", hSalida.Text, minClose));
            if (rbSi.Checked)
            {
                sitio.EsGratis = Gratuito.Si;
            }
            else
            {
                sitio.EsGratis = Gratuito.No;
            }
            //sitio.Atracciones = new List<Atraccion>();

            Sitios.Add(sitio);

            //Vaciar controles
            this.Limpieza();
        }

        private void Limpieza()
        {
            txtNombre.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            hEntrada.Text = string.Empty;
            hSalida.Text = string.Empty;
            mEntrada.Text = string.Empty;
            mSalida.Text = string.Empty;
            rbSi.Checked = true;
            
        }
    }
}
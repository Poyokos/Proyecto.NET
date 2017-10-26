using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class Modificar : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            CargarLugares();
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

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            //Deshabilitar controles con datos importantes
            ddlLugares.Enabled = false;
            btnEditar.Enabled = false;

            int idSitio = int.Parse(ddlLugares.SelectedValue);

            //Objeto sitio el cual toma los datos leidos desde db por su id
            SitioTuristico sitio = new SitioTuristico();
            sitio.IdSitio = idSitio;
            if (sitio.Read())
            {
                lblInfo.Text = "¡Aqui podrás modificar los datos!";
                //Se llena el ddl del campo exposición
                ddlExposicion.DataSource = Enum.GetValues(typeof(Exposicion));
                ddlExposicion.DataBind();

                VisibleControles(true);

                //Los controles tomas los valores del sitio
                txtNombre.Text = sitio.Nombre;
                txtDireccion.Text = sitio.Direccion;
                hEntrada.Text = sitio.Entrada.ToString("hh");
                mEntrada.Text = sitio.Entrada.ToString("mm");
                hSalida.Text = sitio.Salida.ToString("hh");
                mSalida.Text = sitio.Salida.ToString("mm");
                if (sitio.EsGratis == 'S') { cbGratuito.Checked = true; } else { cbGratuito.Checked = false; }
                ddlExposicion.Text = sitio.TipoExposicion.ToString();
            }
        }

        //Método que coloca visible los controles
        private void VisibleControles(bool estado)
        {
            #region Controles
            lblNombre.Visible = estado;
            lblDireccion.Visible = estado;
            lblApertura.Visible = estado;
            lblCierre.Visible = estado;
            lblGratuito.Visible = estado;
            lblExposicion.Visible = estado;
            txtNombre.Visible = estado;
            txtDireccion.Visible = estado;
            hEntrada.Visible = estado;
            mEntrada.Visible = estado;
            hSalida.Visible = estado;
            mSalida.Visible = estado;
            cbGratuito.Visible = estado;
            ddlExposicion.Visible = estado;
            btnGuardar.Visible = estado;
            btnCancelar.Visible = estado;
            #endregion
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            int idSitio = int.Parse(ddlLugares.SelectedValue);

            SitioTuristico sitio = new SitioTuristico();
            sitio.IdSitio = idSitio;
            #region Datos Obtenidos en controles
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
            if (cbGratuito.Checked)
            {
                sitio.EsGratis = 'S';
            }
            else
            {
                sitio.EsGratis = 'N';
            }
            sitio.TipoExposicion = (Exposicion)ddlExposicion.SelectedIndex;
            #endregion

            if (sitio.Update())
            {
                //Habilitar controles
                ddlLugares.Enabled = true;
                btnEditar.Enabled = true;

                lblInfo.Text = "¡Actualizado correctamente!";
                VisibleControles(false);
            } else { lblInfo.Text = "¡No pudo ser actualizar!, verifique los campos."; }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            //Habilitar controles
            ddlLugares.Enabled = true;
            btnEditar.Enabled = true;

            //Deshabilitar controles de edición
            VisibleControles(false);

            lblInfo.Text = string.Empty;
        }
    }
}
﻿using System;
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
            SitioTuristico sitio = new SitioTuristico();

            sitio.Nombre = txtNombre.Text;
            sitio.Direccion = txtDireccion.Text;
            sitio.Entrada = TimeSpan.Parse(string.Format("{0}:{1}", hEntrada.Text, mEntrada.Text));
            sitio.Salida = TimeSpan.Parse(string.Format("{0}:{1}", hSalida.Text, mSalida.Text));
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
        }
    }
}
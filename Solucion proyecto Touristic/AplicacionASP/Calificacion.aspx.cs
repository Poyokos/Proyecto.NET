using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class Calificacion : System.Web.UI.Page
    {
        public Calificaciones Calif
        {
            get
            {
                if (Session["_Calif"] == null)
                {
                    Session["_Calif"] = new Calificaciones();
                }
                return (Calificaciones)Session["_Calif"];
            }
            set
            {
                Session["_Calif"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar.aspx");
        }

        protected void btnCalificar_Click(object sender, EventArgs e)
        {
            if (!Validar())
            {
                Crear();
                Server.Transfer("Agregar.aspx");
            }
        }

        public int Atractivo()
        {
            int atraccion = 0;
            if (optAt1.Checked) { atraccion = 1; }
            if (optAt2.Checked) { atraccion = 2; }
            if (optAt3.Checked) { atraccion = 3; }
            if (optAt4.Checked) { atraccion = 4; }
            if (optAt5.Checked) { atraccion = 5; }
            if (optAt6.Checked) { atraccion = 6; }
            if (optAt7.Checked) { atraccion = 7; }
            return atraccion;
        }

        public int Autenticidad()
        {
            int autenticidad = 0;
            if (optAu1.Checked) { autenticidad = 1; }
            if (optAu2.Checked) { autenticidad = 2; }
            if (optAu3.Checked) { autenticidad = 3; }
            if (optAu4.Checked) { autenticidad = 4; }
            if (optAu5.Checked) { autenticidad = 5; }
            if (optAu6.Checked) { autenticidad = 6; }
            if (optAu7.Checked) { autenticidad = 7; }
            return autenticidad;
        }

        public int Singularidad()
        {
            int singularidad = 0;
            if (optSi1.Checked) { singularidad = 1; }
            if (optSi2.Checked) { singularidad = 2; }
            if (optSi3.Checked) { singularidad = 3; }
            if (optSi4.Checked) { singularidad = 4; }
            if (optSi5.Checked) { singularidad = 5; }
            if (optSi6.Checked) { singularidad = 6; }
            if (optSi7.Checked) { singularidad = 7; }
            return singularidad;
        }

        public int Mult_Actividades()
        {
            int mult_actividades = 0;
            if (optMu1.Checked) { mult_actividades = 1; }
            if (optMu2.Checked) { mult_actividades = 2; }
            if (optMu3.Checked) { mult_actividades = 3; }
            if (optMu4.Checked) { mult_actividades = 4; }
            if (optMu5.Checked) { mult_actividades = 5; }
            if (optMu6.Checked) { mult_actividades = 6; }
            if (optMu7.Checked) { mult_actividades = 7; }
            return mult_actividades;
        }

        public void Crear()
        {
            Calificaciones calif = new Calificaciones();
            calif.Atractivo = Atractivo();
            calif.Autenticidad = Autenticidad();
            calif.Singularidad = Singularidad();
            calif.Mult_actividades = Mult_Actividades();
            lblResumen.Text = "" + calif.Atractivo + " - " + calif.Autenticidad + " - " + calif.Singularidad + " - " + calif.Mult_actividades;
            Calif = calif;
        }

        public bool Validar()
        {
            bool error = false;
            //Valida Atractivo
            if (Atractivo() == 0)
            {
                lblvAtractivo.Text = "Debe calificar Atractivo";
                error = true;
            }
            else
            {
                lblvAtractivo.Text = string.Empty;
            }
            //Valida Autenticidad
            if (Autenticidad() == 0)
            {
                lblvAutenticidad.Text = "Debe calificar Autenticidad";
                error = true;
            }
            else
            {
                lblvAutenticidad.Text = string.Empty;
            }
            //Valida Singularidad
            if (Singularidad() == 0)
            {
                lblvSingularidad.Text = "Debe calificar Singularidad";
                error = true;
            }
            else
            {
                lblvSingularidad.Text = string.Empty;
            }
            //Valida Multiplicidad de Actividades
            if (Mult_Actividades() == 0)
            {
                lblvMult_Actividades.Text = "Debe calificar Multiplicidad de Actividades";
                error = true;
            }
            else
            {
                lblvMult_Actividades.Text = string.Empty;
            }

            return error;
        }

        protected void optAt1_CheckedChanged(object sender, EventArgs e)
        {
            Crear();
            txtTotal.Text = string.Format("{0}", Calif.Total);
        }
    }
}
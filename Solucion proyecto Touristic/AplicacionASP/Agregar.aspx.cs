using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class Agregar : System.Web.UI.Page
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
        }

        protected void Page_Load(object sender, EventArgs e)
        {   
            if (Session["puntaje"] != null)
            {
                double nota = (double)Session["puntaje"];
                txtNota.Text = nota.ToString();
            }
            else
            {
                txtNota.Text = "0";
            }

            if (!IsPostBack)
            {
                this.cargarDdl();
            }

            if (Session["_lugarPos"] != null)
            {
                ddlLugares.SelectedIndex = (int)Session["_lugarPos"];
            }

            //if (Session["sitioselect"] == null)
            //{
            //    Session["sitioselect"] = 0;
            //}
            //else
            //{
            //    ddlLugares.SelectedIndex = (int)Session["sitioselect"];
            //}
        }

        private void cargarDdl()
        {
            ListItem item;
            foreach (var tempSitio in Sitios.LeerTodos())
            {
                item = new ListItem(string.Format("{0}", tempSitio.Nombre));
                ddlLugares.Items.Add(item);
            }           
        }



        protected void btnNota_Click(object sender, EventArgs e)
        {
            Session["_lugarPos"] = ddlLugares.SelectedIndex;
            Server.Transfer("Calificacion_Lugar.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            //Session["sitioselect"] = null;
            Server.Transfer("IngresoTurista.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            //Session["sitioselect"] = null;
            Server.Transfer("Inicio.aspx");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Actividad actividad = new Actividad();

            actividad.Nota = (Double)Session["_Calif"];
            actividad.Visitante = (Turista)Session["miTurista"];
            actividad.Lugar = (SitioTuristico)Sitios.LeerTodos()[ddlLugares.SelectedIndex];
            actividad.Observacion = txtObservacion.Text;
            actividad.FechaDeCritica = DateTime.Now;


            if (actividad.Create())
            {
                Session["puntaje"] = null;
                //Session["sitioselect"] = null;
                Server.Transfer("Inicio.aspx");
            }
            else
            {
                lblNotificacion.Text = "¡Ocurrió un error! ¡Vuelva a intentarlo!";
            }
        }

        protected void btnAgregarLugar_Click(object sender, EventArgs e)
        {
            Session["_agregar"] = true;
            Session["_lugarPos"] = ddlLugares.SelectedIndex;
            Server.Transfer("NuevoLugar.aspx");
        }
    }
}
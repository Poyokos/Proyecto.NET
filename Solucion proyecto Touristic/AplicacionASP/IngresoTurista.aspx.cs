using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Touristic;

namespace AplicacionASP
{
    public partial class IngresoTurista : System.Web.UI.Page
    {
        public Turista MiTurista
        {
            get
            {
                if (Session["miTurista"] == null)
                {
                    Session["miTurista"] = new Turista();
                }

                return (Turista)Session["miTurista"];
            }

            set
            {
                Session["miTurista"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {          
            Turista turis = new Turista();
            turis.Nombre = txtNombre.Text;
            turis.Edad = int.Parse(txtEdad.Text);
            turis.Nacionalidad = txtNacionalidad.Text;
            turis.Ndocumento = txtDocumento.Text;
            MiTurista = turis;

            Server.Transfer("Agregar.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void txtDocumento_TextChanged(object sender, EventArgs e)
        {
            

        }
    }
}
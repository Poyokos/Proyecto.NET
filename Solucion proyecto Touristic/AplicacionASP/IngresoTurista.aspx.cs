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
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {          
            Turista turis = new Turista();
            turis.Ndocumento = txtDocumento.Text;

            if (turis.Read())
            {
                Session["miTurista"] = turis;
                Server.Transfer("Agregar.aspx");
            }
            else
            {
                turis.Nombre = txtNombre.Text;
                turis.Edad = int.Parse(txtEdad.Text);
                turis.Nacionalidad = txtNacionalidad.Text;

                if (turis.Create())
                {
                    Session["miTurista"] = turis;
                    Server.Transfer("Agregar.aspx");
                }
                else
                {
                    lblNotificacion.Text = "¡Ocurrió un error! ¡Vuelva a intentarlo!";
                }
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

    }
}
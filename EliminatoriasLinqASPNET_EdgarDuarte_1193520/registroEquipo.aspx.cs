using EliminatoriasLinqASPNET_EdgarDuarte_1193520.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliminatoriasLinqASPNET_EdgarDuarte_1193520
{
    public partial class registroEquipo : System.Web.UI.Page
    {
        PartidoDBDataContext db = new PartidoDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistroEquipo_Click(object sender, EventArgs e)
        {
            equipo objEquipo = new equipo();
            objEquipo.nombre = txtEquipo.Text;
            objEquipo.puntos = 0;
            db.equipo.InsertOnSubmit(objEquipo);
            db.SubmitChanges();
            if (objEquipo != null) {
                lblOK.Text = "registro exitoso";

            }
            else
            {
                lblError.Text = "Registro fallido";
            }

        }
    }
}
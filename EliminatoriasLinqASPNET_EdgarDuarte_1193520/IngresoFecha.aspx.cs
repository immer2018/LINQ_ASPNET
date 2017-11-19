using EliminatoriasLinqASPNET_EdgarDuarte_1193520.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliminatoriasLinqASPNET_EdgarDuarte_1193520
{
    public partial class IngresoFecha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnRegistroFecha_Click(object sender, EventArgs e)
        {
            PartidoDBDataContext db = new PartidoDBDataContext();
            db.RegistroDetalleFecha(Convert.ToDateTime(txtFecha.Text), Convert.ToInt32(ddlEquipo1.SelectedValue), Convert.ToInt32(ddlEquipo2.SelectedValue), Convert.ToInt32(txtGol1.Text), Convert.ToInt32(txtGol2.Text));
            lblOk.Text = "registro de la fecha exitoso";


        }
    }
}
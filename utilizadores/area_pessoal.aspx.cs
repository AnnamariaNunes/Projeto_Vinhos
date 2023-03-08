using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Final_Vinho.utilizadores
{
    public partial class area_pessoal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.Cells.Count > 1)
            {
                e.Row.Cells[1].Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("criar_vinho.aspx");
        }

        protected void buttonEditarVinhos_Click(object sender, EventArgs e)
        {
            if(GridVinhos.SelectedRow != null)
            {
                Session["id_vinho"] = GridVinhos.SelectedRow.Cells[1].Text;
                Response.Redirect("editar_vinho.aspx");

            }
        }
    }
}
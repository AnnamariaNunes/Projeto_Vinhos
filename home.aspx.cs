using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Final_Vinho
{
    public partial class home : System.Web.UI.Page
    {
        int CurrentPage;

        void BindListVinhos(DataTable table)
        {
            PagedDataSource paged = new PagedDataSource();

            paged.DataSource = table.DefaultView;
            paged.PageSize = 9;
            paged.AllowPaging = true;
            paged.CurrentPageIndex = CurrentPage;
            LinkPrimeira.Enabled = !paged.IsFirstPage;
            LinkAnterior.Enabled = !paged.IsFirstPage;
            LinkSeguinte.Enabled = !paged.IsLastPage;
            LinkUltima.Enabled = !paged.IsLastPage;
            ViewState["total"] = paged.PageCount;
            listVinhos.DataSource = paged;
            listVinhos.DataBind();
            ViewState["dataSource"] = table;
        }

        void GetVinhos()
        {
            SqlConnection connection = new SqlConnection(
                @"data source = WINDOWS10; initial catalog=Vinhos;" + " integrated security = true;");
            SqlCommand command = connection.CreateCommand();
            command.CommandText = " usp_GetListaVinhos";
            command.CommandType = CommandType.StoredProcedure;
            command.Connection = connection;
            SqlDataReader  reader;
            DataTable table = new DataTable();
            connection.Open();
            reader = command.ExecuteReader();
            table.Load(reader);
            connection.Close();
            BindListVinhos(table);

        
        }   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            { 
                GetVinhos();
                ViewState["contador"] = 0;

            }
            CurrentPage = (int)ViewState["contador"];
        }

        protected void LinkPrimeira_Click(object sender, EventArgs e)
        {
            CurrentPage = 0;
            ViewState["contador"] = CurrentPage;
            GetVinhos();
        }

        protected void LinkAnterior_Click(object sender, EventArgs e)
        {
            CurrentPage = (int)ViewState["contador"];
            CurrentPage -= 1;
            ViewState["contador"] = CurrentPage;
            BindListVinhos((DataTable)ViewState["dataSource"]);
                
        }

        protected void LinkSeguinte_Click(object sender, EventArgs e)
        {
            CurrentPage = (int)ViewState["contador"];
            CurrentPage += 1;
            ViewState["contador"] = CurrentPage;
            BindListVinhos((DataTable)ViewState["dataSource"]);
        }

        protected void LinkUltima_Click(object sender, EventArgs e)
        {
            CurrentPage = (int)ViewState["total"] - 1;
            ViewState["contador"] = CurrentPage;
            BindListVinhos((DataTable)ViewState["dataSource"]);
        }
    }
}
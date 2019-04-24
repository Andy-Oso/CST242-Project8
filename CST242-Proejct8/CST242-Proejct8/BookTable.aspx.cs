using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST242_Proejct8
{
    public partial class BookTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // the event handler for clicking the search button
        protected void bookSearchButton_Click(object sender, ImageClickEventArgs e) => Response.Redirect("BookSearch.aspx");
        // the event handler for clicking the insert button
        protected void bookInsertButton_Click(object sender, ImageClickEventArgs e) => Response.Redirect("BookInsert.aspx");
    }
}
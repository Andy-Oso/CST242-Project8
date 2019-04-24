using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST242_Proejct8
{
    public partial class BookDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        // event handler for the image button to go back to the table
        protected void BookTable_Click(object sender, ImageClickEventArgs e) => Response.Redirect("BookTable.aspx");
        // the event handler for clicking the search button
        protected void bookSearchButton_Click(object sender, ImageClickEventArgs e) => Response.Redirect("BookSearch.aspx");
    }
}
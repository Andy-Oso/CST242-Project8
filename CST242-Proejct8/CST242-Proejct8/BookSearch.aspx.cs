using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST242_Proejct8
{
    public partial class BookSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // event handler for the image button to go back to the table
        protected void BookTable_Click(object sender, ImageClickEventArgs e) => Response.Redirect("BookTable.aspx");
        // event handler for searching for a book, takes the selected value
        protected void BookSearchButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookDetail.aspx?BookCode=" + DropDownList1.SelectedValue);
        }
    }
}
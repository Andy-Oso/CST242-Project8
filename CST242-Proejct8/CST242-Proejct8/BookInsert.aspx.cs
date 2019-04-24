using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST242_Proejct8
{
    public partial class BookInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // event handler for the image button to go back to the table
        protected void BookTable_Click(object sender, ImageClickEventArgs e) => Response.Redirect("BookTable.aspx");
        // event handler to insert the book
        protected void bookInsertButton_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                SqlDataSourceBooks.InsertParameters["BookCode"].DefaultValue = bookCodeTextBox.Text;
                SqlDataSourceBooks.InsertParameters["PublisherCode"].DefaultValue = publisherCodeTextBox.Text;
                SqlDataSourceBooks.InsertParameters["Type"].DefaultValue = bookTypeTextBox.Text;
                SqlDataSourceBooks.InsertParameters["Price"].DefaultValue = bookPriceTextBox.Text;
                SqlDataSourceBooks.InsertParameters["Title"].DefaultValue = bookTitleTextBox.Text;
                Response.Redirect("BookTable.aspx");
            }
            catch { }
        }
    }
}
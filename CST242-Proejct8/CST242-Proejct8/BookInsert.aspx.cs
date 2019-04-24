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
                SqlDataSource.InsertParameters["BookCode"].DefaultValue = bookCodeTextBox.Text;
                SqlDataSource.InsertParameters["PublisherCode"].DefaultValue = publisherCodeTextBox.Text;
                SqlDataSource.InsertParameters["Type"].DefaultValue = bookTypeTextBox.Text;
                SqlDataSource.InsertParameters["Title"].DefaultValue = bookTitleTextBox.Text;
                SqlDataSource.InsertParameters["Price"].DefaultValue = bookPriceTextBox.Text;
                SqlDataSource.Insert();
                status.ForeColor = System.Drawing.Color.Green;
                status.Text = "[Input Good!]";
                Response.Redirect("BookTable.aspx");
            }
            catch
            {
                status.ForeColor = System.Drawing.Color.Red;
                status.Text = "[Exception caught, check input!]";
            }
        }
    }
}
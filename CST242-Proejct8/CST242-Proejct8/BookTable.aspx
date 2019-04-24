<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookTable.aspx.cs" Inherits="CST242_Proejct8.BookTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Table</title>
    <style type="text/css">
        #secondaryBannerImage {
            height: 100px;
            width: 100px;
            padding-left:5px;
        }
        #mainBannerImage {
            height: 125px;
            width: 125px;
            padding-right: 20px;
        }
        #Banner {
            background-color: burlywood;
            border-radius: 20px;
            box-shadow: 10px 10px 20px;
            font-family:'Times New Roman';
            font-weight:200;
            font-size:75px;
            padding-top:20px;
        }
        #bookTable{
            padding-top: 20px;
            padding-left: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="Banner">
            <img id ="secondaryBannerImage" src="Images/book_table_icon.png" /> Book Table <img id="mainBannerImage" src="Images/books_banner.png" align="right" />
        </div>

        <div id="bookTable">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="BookCode" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="PublisherCode" HeaderText="PublisherCode" SortExpression="PublisherCode" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="BookCode" HeaderText="BookCode" ReadOnly="True" SortExpression="BookCode" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:BooksConnectionString.ProviderName %>" 
                SelectCommand="SELECT [BookCode], [PublisherCode], [Type], [Title], [Price] FROM [Book]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            
            <p id="Image buttons">
            <asp:ImageButton ID="bookInsertButton" runat="server" ImageUrl="~/Images/book_insert_icon.png" Height="40px" Width="40px" 
                AlternateText="Insert" style="margin-left: 25px" ToolTip="Insert a Book" OnClick="bookInsertButton_Click"/>
            <asp:ImageButton ID="bookSearchButton" runat="server" ImageUrl="~/Images/book_search_icon.png" Height="40px" Width="40px" 
                AlternateText="Search" style="margin-left: 50px" ToolTip="Search" OnClick="bookSearchButton_Click"/>
            </p>
        </div>
    </form>
</body>
</html>

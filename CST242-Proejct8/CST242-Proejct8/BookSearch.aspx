<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookSearch.aspx.cs" Inherits="CST242_Proejct8.BookSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Search</title>
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
        #searchDropDown{
            padding-top: 30px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Banner">
            <img id ="secondaryBannerImage" src="Images/book_search_icon.png" /> Book Search <img id="mainBannerImage" src="Images/books_banner.png" align="right" />
        </div>
        <div id="searchDropDown">
            <asp:Label runat="server" Text="Search by Book Title" Font-Bold="true" Font-Size="X-Large"></asp:Label>

            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="DropDownTitles" 
                DataTextField="Title" 
                DataValueField="BookCode" 
                Font-Italic="True" 
                Font-Size="Large"></asp:DropDownList>

            <asp:SqlDataSource ID="DropDownTitles" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>"
                ProviderName="<%$ ConnectionStrings:BooksConnectionString.ProviderName %>"
                SelectCommand="SELECT [BookCode], [Title] FROM [Book] ORDER BY [Title]"></asp:SqlDataSource>

            <asp:Button ID="BookSearchButton" runat="server" Text="Search" Height="25px" style="margin-left: 25px" Width="90px" OnClick="BookSearchButton_Click"/>

            <p>
                <asp:ImageButton ID="BookTable" runat="server" ImageUrl="~/Images/book_table_icon.png" AlternateText="Book Table" ToolTip="Go to Book Table" 
                    OnClick="BookTable_Click" Height="40px" Width="40px" style="margin-left: 60px"/>
            </p>
            <asp:SqlDataSource ID="BookTitles" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:BooksConnectionString.ProviderName %>" 
                SelectCommand="SELECT [Title] FROM [Book]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

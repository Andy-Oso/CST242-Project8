<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookInsert.aspx.cs" Inherits="CST242_Proejct8.BookInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Insert</title>
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
        #bookInsert{
            padding-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Banner">
            <img id ="secondaryBannerImage" src="Images/book_insert_icon.png" /> Insert Book <img id="mainBannerImage" src="Images/books_banner.png" align="right" />
        </div>
        <div id="bookInsert">
            <p>
                <asp:Label runat="server" Text="Book Code   "></asp:Label>
                <asp:TextBox ID="bookCodeTextBox" runat="server" style="margin-left: 21px"></asp:TextBox>
            </p>

            <p>
                <asp:Label runat="server" Text="Publisher Code  "></asp:Label>
                <asp:TextBox ID="publisherCodeTextBox" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label runat="server" Text="Book Type   "></asp:Label>
                <asp:TextBox ID="bookTypeTextBox" runat="server" style="margin-left: 23px"></asp:TextBox>
            </p>

            <p>
                <asp:Label runat="server" Text="Book Title  "></asp:Label>
                <asp:TextBox ID="bookTitleTextBox" runat="server" style="margin-left: 26px"></asp:TextBox>
            </p>

            <p>
                <asp:Label runat="server" Text="Price   "></asp:Label>
                <asp:TextBox ID="bookPriceTextBox" runat="server" style="margin-left: 58px"></asp:TextBox>
            </p>

            <asp:SqlDataSource ID="SqlDataSourceBooks" runat="server"
                ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>"
                ProviderName="<%$ ConnectionStrings:BooksConnectionString.ProviderName %>"
                SelectCommand="SELECT [Title], [PublisherCode], [Type], [Price], [BookCode] FROM [Book]" 
                DeleteCommand="DELETE FROM [Book] WHERE [BookCode] = ?" 
                InsertCommand="INSERT INTO [Book] ([Title], [PublisherCode], [Type], [Price], [BookCode]) VALUES (?, ?, ?, ?, ?)" 
                UpdateCommand="UPDATE [Book] SET [Title] = ?, [PublisherCode] = ?, [Type] = ?, [Price] = ? WHERE [BookCode] = ?">
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PublisherCode" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Type" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="BookCode" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="PublisherCode" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Type" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="BookCode" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div id="buttons">
             <p>
                 <asp:ImageButton ID="bookInsertButton" runat="server" ImageUrl="~/Images/book_insert_icon.png" Height="40px" Width="40px" 
                AlternateText="Insert" style="margin-left: 25px" ToolTip="Insert Book" OnClick="bookInsertButton_Click"/>
                <asp:ImageButton ID="BookTable" runat="server" ImageUrl="~/Images/book_table_icon.png" AlternateText="Book Table" ToolTip="Go to Book Table" 
                    OnClick="BookTable_Click" Height="40px" Width="40px" style="margin-left: 66px"/>
            </p>
        </div>
    </form>
</body>
</html>

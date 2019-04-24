<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookDetail.aspx.cs" Inherits="CST242_Proejct8.BookDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Detail</title>
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
        #detailTable{
            padding-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div id="Banner">
            <img id ="secondaryBannerImage" src="Images/book_detail_icon.png" /> Book Details <img id="mainBannerImage" src="Images/books_banner.png" align="right" />
        </div>

        <div id="detailTable">
            <asp:DetailsView ID="DetailsView" runat="server" Height="50px" Width="225px" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="BookCode" DataSourceID="SqlDataSource">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="BookCode" HeaderText="BookCode" ReadOnly="True" SortExpression="BookCode" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="PublisherCode" HeaderText="PublisherCode" SortExpression="PublisherCode" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BookTableConnectionString %>" ProviderName="<%$ ConnectionStrings:BookTableConnectionString.ProviderName %>" SelectCommand="SELECT [BookCode], [Title], [Type], [Price], [PublisherCode] FROM [Book] WHERE ([BookCode] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="BookCode" QueryStringField="BookCode" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div id="Buttons">
            <p>
                <asp:ImageButton ID="BookTable" runat="server" ImageUrl="~/Images/book_table_icon.png" AlternateText="Book Table" ToolTip="Go to Book Table" 
                    OnClick="BookTable_Click" Height="40px" Width="40px" style="margin-left: 60px"/>
                <asp:ImageButton ID="bookSearchButton" runat="server" ImageUrl="~/Images/book_search_icon.png" Height="40px" Width="40px" 
                AlternateText="Search" style="margin-left: 50px" ToolTip="Search" OnClick="bookSearchButton_Click"/>
            </p>
        </div>
    </form>
</body>
</html>

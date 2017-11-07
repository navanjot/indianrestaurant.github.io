<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FINALPROJECT.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 414px;">
        <tr>
            <td style="width: 227px"><h1>Drinks</h1></td>
            <td style="width: 216px"><h1>Snacks</h1></td>
            <td><h1>Specials</h1></td>
        </tr>
        <tr>
            <td style="width: 227px">
                <asp:DataList ID="DataList1" runat="server" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="#333333"
                    Width="221px" EnableViewState="False" BackColor="White" 
                 BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                 GridLines="Horizontal" Height="500px" style="margin-right: 0px; margin-top: 3px">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        ItemName:
                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="250px" Width="200px" />
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/detail.jpg" PostBackUrl='<%#"Order.aspx?iName="+Eval("ItemName") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ItemName], [Price], [Image] FROM [Products] Where ([Category] = @Category)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Drinks" Name="Category" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 216px">
                <asp:DataList ID="DataList2" runat="server" CellPadding="3"  DataSourceID="SqlDataSource2" ForeColor="#333333"
                    Width="221px" EnableViewState="False" BackColor="White" 
                 BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                 GridLines="Horizontal" Height="500px" style="margin-right: 0px; margin-top: 3px">
                 <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        ItemName:
                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' Height="250px" Width="200px" />
                        <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/detail.jpg" PostBackUrl='<%#"Order.aspx?iName="+Eval("ItemName") %>' />
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ItemName], [Price], [Image] FROM [Products] Where ([Category] = @Category)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Snacks" Name="Category" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:DataList ID="DataList3" runat="server" CellPadding="3" DataSourceID="SqlDataSource3" ForeColor="#333333" Width="221px"
                 EnableViewState="False" BackColor="White" 
                 BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                 GridLines="Horizontal" Height="500px" style="margin-right: 0px; margin-top: 3px">
                 <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        ItemName:
                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' Height="250px" Width="200px" />
                        <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/detail.jpg" PostBackUrl='<%#"Order.aspx?iName="+Eval("ItemName") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ItemName], [Price], [Image] FROM [Products] Where ([Category] = @Category)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Specials" Name="Category" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

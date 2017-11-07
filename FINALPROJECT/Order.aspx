<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="FINALPROJECT.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table style="width: 100%; height: 191px;">
            <tr>
                <td style="width: 480px">
                    <asp:DataList ID="DataList1" runat="server" onitemdatabound="use" CellPadding="4" ForeColor="#333333" DataKeyField="Id" DataSourceID="SqlDataSource1">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <ItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            ItemName:
                            <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                            <br />
                            
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="250px" Width="200px" />
                            <br />
                            Category:
                            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                            <br />
                            Price:
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [ItemName],[Image], [Category], [Price] FROM [Products] WHERE ([ItemName] = @ItemName)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ItemName" QueryStringField="iName" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Enter Quantity"></asp:Label>
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                   ControlToValidate="txtQuantity" ErrorMessage="must fill some value"></asp:RequiredFieldValidator>
                   <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtQuantity" ErrorMessage="must fill value 1-1000" 
                      MaximumValue="1000" MinimumValue="1" Display="Dynamic" Type="Integer"></asp:RangeValidator>

                    <asp:Button ID="btnCart" runat="server" Text="Add To Cart" OnClick="btnCart_Click" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

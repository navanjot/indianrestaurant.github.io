<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="FINALPROJECT.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>

            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="txtUser" ErrorMessage="fill usename "></asp:RequiredFieldValidator>
<br />
             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtPass" ErrorMessage="fill password"></asp:RequiredFieldValidator>
            <br />

            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSignup" runat="server" Text="Sign In" OnClick="btnSignup_Click" />
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>
                
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Not User? Register With Us.</asp:LinkButton>
                
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

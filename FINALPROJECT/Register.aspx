<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FINALPROJECT.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            <td><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ForeColor="#FF3300" ErrorMessage="It is a mandatory field Can't be left blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            <td><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ForeColor="#FF3300" ErrorMessage="It is a mandatory field Can't be left blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 19px">Email Id</td>
            <td style="height: 19px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               </td>
            <td style="height: 19px">
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" 
                ForeColor="#FF3300" ControlToValidate="TextBox3" ErrorMessage="It is a mandatory field Can't be left blank"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" runat="server" 
                 ForeColor="#FF3300" ControlToValidate="TextBox3" ErrorMessage="Not in the correct format i.e abc@domain" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            

            </td>
        </tr>
          <tr>
            <td style="height: 19px">User Id</td>
            <td style="height: 19px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                
                  </td>
            <td style="height: 19px"> <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  Display="Dynamic" runat="server" 
                ControlToValidate="TextBox4" 
                ErrorMessage="It is a mandatory field Can't be left blank" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="User Id not avaliable Try Another" ForeColor="Red"></asp:CustomValidator>
           </td>
        </tr>
          <tr>
            <td style="height: 19px">Password</td>
            <td style="height: 19px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
              </td>
            <td style="height: 19px">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  Display="Dynamic" runat="server" 
                ControlToValidate="TextBox5" 
                ErrorMessage="It is a mandatory field Can't be left blank" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td style="height: 19px">Address</td>
            <td style="height: 19px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
              </td>
            <td style="height: 19px">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  Display="Dynamic" runat="server" 
                ControlToValidate="TextBox6" 
                ErrorMessage="It is a mandatory field Can't be left blank" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td style="height: 19px">Mobile No.</td>
            <td style="height: 19px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
              </td>
            <td style="height: 19px">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  Display="Dynamic" runat="server" 
                ControlToValidate="TextBox7" 
                ErrorMessage="It is a mandatory field Can't be left blank" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
               ForeColor="#FF3300" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Not in the correct format" 
                MaximumValue="9999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator>

            </td>
        </tr>
        <tr>
            <td style="height: 19px"></td>
            <td style="height: 19px">
              
                <asp:Button ID="btnRegister" runat="server" Text="Register" Width="168px" OnClick="btnRegister_Click" />
              
              </td>
            <td style="height: 19px"></td>
        </tr>
    </table>
</asp:Content>

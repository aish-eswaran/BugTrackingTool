<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        #Label7
        {
            background-color: White;
        }
        .style2
        {
        }
        .style3
        {
            width: 655px;
        }
        .style4
        {
            width: 655px;
            height: 64px;
        }
        .style5
        {
            height: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label9" runat="server" Text="SCOPE" ForeColor="#6600CC"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label8" runat="server" Text="e- Knowledge Center" Font-Names="Corbel"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" bgcolor="#6600CC">
                    <asp:Label ID="Label7" runat="server" Text="A Quatrro Group Company" BackColor="#6600CC"
                        ForeColor="White" Font-Names="Franklin Gothic" Font-Bold="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="createuser" 
                        BackColor="#FFCCFF" />
                </td>
                <td class="style5">
                    &nbsp;
                </td>
                <td align="left" class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label10" runat="server" Text="User ID"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter a User ID" 
                        ValidationGroup="createuser">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    &nbsp;
                    </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label11" runat="server" Text=" Employee Name "></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Please enter a employee name" ControlToValidate="TextBox2" 
                        ValidationGroup="createuser">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label12" runat="server" Text="Role"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFFFCC">
                        <asp:ListItem Selected="True" Value="NULL">--Select a role--</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Team Leader</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                        <asp:ListItem>Tester</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Please select a role" 
                        ValidationGroup="createuser">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                    <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Create" onclick="Button1_Click" 
                        ValidationGroup="createuser" ToolTip="Click to create the user" />
                </td>
                <td align="center">
                    &nbsp;
                </td>
                <td align="left">
                    <asp:Button ID="Button2" runat="server" Text="Back" CausesValidation="False" 
                        onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

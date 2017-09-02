<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 633px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
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
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" bgcolor="#6600CC">
                    <asp:Label ID="Label7" runat="server" Text="A Quatrro Group Company" BackColor="#6600CC"
                        ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#FFCCFF"
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="login" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label3" runat="server" Text="User ID"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a valid userID"
                        ControlToValidate="TextBox1" ValidationGroup="login">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFCC" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a valid password"
                        ControlToValidate="TextBox2" ValidationGroup="login">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label6" runat="server" Visible="false" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" ValidationGroup="login"
                        ToolTip="Click to Login" />
                </td>
            </tr>
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
        </table>
    </div>
    <table class="style1">
        
    </table>
    </form>
</body>
</html>

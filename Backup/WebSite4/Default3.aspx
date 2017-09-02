<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

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
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="left" class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style3" align="center">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" BackColor="#FFCCFF" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label11" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
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
                    <asp:Label ID="Label3" runat="server" Text="Current Password"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:TextBox ID="txtOld" runat="server" BackColor="#FFFFCC" Width="128px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOld"
                        ErrorMessage="Please enter your old password">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:TextBox ID="txtNew" runat="server" BackColor="#FFFFCC" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNew"
                        ErrorMessage="Please enter your new Password.">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtOld"
                        ControlToValidate="txtNew" ErrorMessage="Your Old password and New password should not be same"
                        Operator="NotEqual">*</asp:CompareValidator>
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
                    <asp:Label ID="Label1" runat="server" Text="Confirm New Password"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:TextBox ID="txtConfirm" runat="server" BackColor="#FFFFCC" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirm"
                        ErrorMessage="Please confirm your password.">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtNew"
                        ControlToValidate="txtConfirm" ErrorMessage="Your New Password and Confirm Password  should be same">*</asp:CompareValidator>
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
                    <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Change" OnClick="Button1_Click" ToolTip="Click to change your password" />
                </td>
                <td align="center">
                    &nbsp;
                </td>
                <td align="left">
                    <asp:Button ID="Button2" runat="server" Text="Refresh" CausesValidation="False" OnClick="Button2_Click"
                        ToolTip="Click to refresh the tabs" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" colspan="3">
                    <asp:Button ID="Button3" runat="server" Text="Back" OnClick="Button3_Click" 
                        CausesValidation="False" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

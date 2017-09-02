<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

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
        }
        .style4
        {
            width: 434px;
            height: 36px;
        }
        .style5
        {
            height: 36px;
        }
        .style6
        {
        }
        .style7
        {
            height: 36px;
            width: 234px;
        }
        .style8
        {
            width: 234px;
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
                <td class="style6">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" class="style4">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" 
                        Text="Display Users" ToolTip="Click to display the users details" />
                </td>
                <td class="style7" align="right">
                    &nbsp;</td>
                <td align="left" class="style5">
                </td>
            </tr>
            <tr>
                <td align="center" class="style3" colspan="3">
                    &nbsp;
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                        AutoGenerateColumns="False" Width="430px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="S.No.">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User ID">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("iuserid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("struser") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Role">
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        SelectedValue='<%# Eval("struser_role") %>' BackColor="#FFFFCC">
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Team Leader</asp:ListItem>
                                        <asp:ListItem>DeveloperDeveloper</asp:ListItem>
                                        <asp:ListItem>Tester</asp:ListItem>
                                        <asp:ListItem>NULL</asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User status">
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                        SelectedValue='<%# Eval("struser_status") %>' BackColor="#FFFFCC">
                                        <asp:ListItem Value="0">Activated</asp:ListItem>
                                        <asp:ListItem Value="1">Deactivated</asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    &nbsp;
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style6" colspan="3">
                    &nbsp;
                    &nbsp;
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" class="style6" colspan="3">
                    <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    &nbsp;</td>
                <td align="right" class="style8">
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" 
                        Visible="False" ToolTip="Click to Submit" />
                </td>
                <td align="left">
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Back" Visible="False" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" colspan="3">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

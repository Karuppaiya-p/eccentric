<%@ Page Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="createformofadmin.aspx.cs" Inherits="createformofadmin" Title="Untitled Page" %>
<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="position: static; width: 796px; border-left-color: #ffffff; border-bottom-color: #ffffff; border-top-style: solid; border-top-color: #ffffff; border-right-style: solid; border-left-style: solid; background-color: silver; border-right-color: #ffffff; border-bottom-style: solid;">
        <tr>
            <td colspan="2" style="height: 22px; text-align: center">
                <strong><span style="font-size: 14pt; text-decoration: underline">Create Forums for
                    Eccentric</span></strong></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Style="position: static;" Visible="False" Width="555px"></asp:Label></td>
        </tr>
                    <tr>
                        <td style="width: 20px">
                            <asp:Label ID="Label1" runat="server" Style="position: static;" Text="Subject :-" Width="131px" ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 81px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="594px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 28px">
                            <asp:Label ID="Label2" runat="server" Style="position: static;" Text="Enter Your message:-" Width="133px" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <FTB:FreeTextBox id="txtfree" runat="server" EditorBorderColorDark="Gray" EditorBorderColorLight="Gray" GutterBackColor="224, 224, 224" ToolbarBackColor="Gray" BackColor="Black">
</FTB:FreeTextBox>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 25px" align="center">
                            <asp:Button ID="btninsert" runat="server" BackColor="Black" BorderColor="Silver"
                                Font-Bold="True" ForeColor="White" OnClick="btninsert_Click" Style="position: static;" Text="Insert" />
                            <asp:Button ID="btnback" runat="server" BackColor="Black" BorderColor="Silver" Font-Bold="True"
                                ForeColor="White" Style="position: static;"
                                Text="back" OnClick="btnback_Click" />
                        </td>
                    </tr>
                </table>
</asp:Content>


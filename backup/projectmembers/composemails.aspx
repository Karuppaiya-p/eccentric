<%@ Page Language="C#" MasterPageFile="~/projectmembers/PMMasterPage.master" AutoEventWireup="true" CodeFile="composemails.aspx.cs" Inherits="composemails" Title="Untitled Page" %>
<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 796px; background-color: silver; border-left-color: #ffffff; border-bottom-color: #ffffff; border-top-style: solid; border-top-color: #ffffff; border-right-style: solid; border-left-style: solid; border-right-color: #ffffff; border-bottom-style: solid;">
        <tr>
            <td align="center" style="width: 100%; height: 100%">
                <table style="width: 700px; height: 173px;">
                    <tr>
                        <td style="width: 100px">
                            </td>
                        <td align="left">
                            <asp:Button ID="Butsend" runat="server" Text="Send" BackColor="Black" BorderColor="LightGray" ForeColor="White" OnClick="Butsend_Click" />
                        </td>
                        <td style="width: 99px" align="left">
                            <asp:Button ID="Butdiscard" runat="server" Text="Disoard" BackColor="Black" BorderColor="Gainsboro" ForeColor="White" OnClick="Butdiscard_Click" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Labto" runat="server" Text="To" Width="25px" Font-Bold="True" Font-Overline="False" Font-Underline="True" ForeColor="Black"></asp:Label></td>
                        <td align="left" colspan="2">
                            <asp:TextBox ID="Textto" runat="server" Width="579px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <strong><span style="color: black; text-decoration: underline">From</span></strong></td>
                        <td colspan="2" align="left">
                            <asp:TextBox ID="Textfrom" runat="server" Width="578px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <span style="color: #ffffff; text-decoration: underline"><strong>
                            <asp:Label ID="Label1" runat="server" Text="Subject" Font-Bold="True" Font-Underline="True" ForeColor="Black"></asp:Label></strong></span></td>
                        <td colspan="2" align="left">
                            &nbsp;<asp:TextBox ID="Textsubject" runat="server" Width="575px" ></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="right"> <FTB:FreeTextBox id="txtfree" runat="server" EditorBorderColorDark="Gray" EditorBorderColorLight="Gray" GutterBackColor="224, 224, 224" ToolbarBackColor="Gray" Width="590px">
</FTB:FreeTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" style="width: 100px">
                            </td>
                        <td align="left" colspan="1">
                            <asp:Button ID="Button1" runat="server" Text="Send" BackColor="Black" BorderColor="LightGray" ForeColor="White" OnClick="Button1_Click" /></td>
                        <td colspan="3" align="left">
                            <asp:Button ID="Button2" runat="server" Text="Disoard" BackColor="Black" BorderColor="Gainsboro" ForeColor="White" OnClick="Button2_Click" /></td>
                    </tr>
                </table>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label></td>
        </tr>
    </table>
</asp:Content>


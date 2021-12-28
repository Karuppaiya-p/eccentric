<%@ Page Language="C#" MasterPageFile="~/projectmembers/PMMasterPage.master" AutoEventWireup="true" CodeFile="showinboxmes.aspx.cs" Inherits="showinboxmes" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 796px; height: 360px; border-left-color: #ffffff; border-bottom-color: #ffffff; border-top-style: solid; border-top-color: #ffffff; border-right-style: solid; border-left-style: solid; background-color: silver; border-right-color: #ffffff; border-bottom-style: solid;">
        <tr>
            <td align="center" style="width: 100px; height: 348px;" valign="top">
    <table style="width: 299px; position: static; height: 89px; border-left-color: #ffffff; border-bottom-color: #ffffff; border-top-color: #ffffff; border-right-color: #ffffff;">
                    <tr>
                        <td align="left" colspan="1" style="width: 151px">
                            <span style="color: black; text-decoration: underline"><strong>Subject</strong></span>&nbsp;</td>
                        <td colspan="3" align="left">
                            <asp:Label ID="Label1" runat="server" Height="27px" Text="Label" Width="359px" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="1" style="width: 151px">
                            <strong><span style="color: black; text-decoration: underline">From</span></strong></td>
                        <td colspan="3">
                            <asp:TextBox ID="TextBox1" runat="server" Width="495px"></asp:TextBox></td>
                    </tr>
        <tr>
            <td align="left" colspan="1" style="width: 151px" valign="top">
                <strong><span style="color: black; text-decoration: underline">Message</span></strong></td>
            <td colspan="3">
                            <asp:TextBox ID="Textmessage" runat="server" Height="148px" TextMode="MultiLine"
                                Width="495px"></asp:TextBox></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


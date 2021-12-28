<%@ Page Language="C#" MasterPageFile="~/projectmembers/PMMasterPage.master" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="projects" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 796px; position: static;
        height: 492px; background-color: silver; border-left-color: #ffffff; border-bottom-color: #ffffff; border-top-style: solid; border-top-color: #ffffff; border-right-style: solid; border-left-style: solid; border-right-color: #ffffff; border-bottom-style: solid;">
        <tr>
            <td style="width: 100px" align="center" valign="top">
                <table align="left">
                    <tr>
                        <td align="center" style="width: 109px">
                <asp:Label ID="labmile" runat="server" Font-Bold="True" Font-Size="X-Large" Text="MileStones " Width="70px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 109px">
                <asp:GridView ID="GridViewmile" runat="server" Width="779px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <FooterStyle BackColor="#CCCCCC" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 109px">
                <asp:Label ID="labactiv" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Activites" Width="95px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 109px">
                <asp:GridView ID="GridViewactivi" runat="server" Width="781px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <FooterStyle BackColor="#CCCCCC" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">
                <asp:Label ID="Label1" runat="server" Height="25px" Style="position: static;" Text="Label" Visible="False" Width="293px"></asp:Label></td>
                    </tr>
                </table>
                &nbsp; &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>


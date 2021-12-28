<%@ Page Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="peoplefinderadmin.aspx.cs" Inherits="peoplefinderadmin" Title="Untitled Page" Theme="admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border-left-color: #ffffff; border-bottom-color: #ffffff; width: 796px; border-top-style: solid; border-top-color: #ffffff; border-right-style: solid; border-left-style: solid; height: 42px; background-color: silver; border-right-color: #ffffff; border-bottom-style: solid">
        <tr>
            <td style="width: 19px">
            </td>
            <td style="width: 406px">
            <asp:Image ID="Image1" runat="server" Height="57px" Style="position: static;" Width="636px" ImageUrl="~/images/peoplefinder.jpg" /></td>
        </tr>
        <tr>
            <td style="width: 19px">
            </td>
            <td style="width: 406px">
                <asp:Button ID="Button2" runat="server" Style="position: static;" Text="All" BackColor="Black" BorderColor="Gray" Font-Underline="True" ForeColor="White" Font-Bold="True" OnClick="Button2_Click" Width="59px" /></td>
        </tr>
        <tr>
            <td style="width: 19px; height: 21px">
                </td>
            <td style="width: 406px; height: 100%">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static;" Width="186px"></asp:TextBox>&nbsp;
                <asp:Button ID="btnsearch" runat="server" Style="position: static;" Text="Search" SkinID="button1" BackColor="Black" BorderColor="Gray" Font-Bold="True" ForeColor="White" OnClick="btnsearch_Click" />
                <asp:Image ID="Image2" runat="server" Style="position: static;" Height="19px" Width="29px" ImageUrl="~/images/search_icon.gif" />&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 19px; height: 22px;">
            </td>
            <td style="width: 406px; height: 22px;">
                <asp:Label ID="labresult" runat="server" Style="position: static;" Text="Search results are :" Width="140px" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red" Visible="False"
                    Width="308px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 19px">
            </td>
            <td style="width: 406px">
            </td>
        </tr>
        <tr>
            <td style="width: 19px; height: 157px;">
            </td>
            <td style="width: 406px; height: 157px;">
                <asp:GridView ID="GridViewofusers" runat="server" Style="position: static;" Width="725px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <FooterStyle BackColor="#CCCCCC" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 19px">
            </td>
            <td style="width: 406px">
                <asp:Label ID="messagelab" runat="server" Style="position: static;" Text="Label" Width="277px" Visible="False" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
                    
</asp:Content>


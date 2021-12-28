<%@ Page Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="adminsentitems.aspx.cs" Inherits="adminsentitems" Title="Untitled Page" Theme="admin1"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border-left-color: white; border-bottom-color: white; width:70%;
        border-top-style: solid; border-top-color: white; border-right-style: solid;
        border-left-style: solid; position: static; height: 16%; background-color: silver;
        border-right-color: white; border-bottom-style: solid">
        <tr>
            <td style="width: 14%; height: 100%">
                <img src="images/sentitemsofeccentric.jpg" style="width: 153px; height: 66px" /></td>
            <td style="height: 100%">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td style="width: 72%; height: 100%">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" SkinID="Button1"
                    Text="Search" /></td>
        </tr>
        <tr>
            <td style="width: 14%; height: 100%">
                &nbsp;<asp:Button ID="Butdelete" runat="server" OnClick="Butdelete_Click" SkinID="Button1"
                    Text="Delete" /></td>
            <td style="height: 100%">
                &nbsp;</td>
            <td style="width: 72%; height: 100%">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 100%; height: 100%">
                <asp:GridView ID="GridViewmail" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="White"
                    GridLines="Vertical" Height="174px" Width="565px">
                    <Columns>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <HeaderStyle BackColor="Black" />
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Bind("mailid") %>' Visible="False"
                                    Width="5px"></asp:Label>
                                <asp:CheckBox ID="CheckBox1" runat="server" Width="10px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:HyperLinkField DataNavigateUrlFields="subject" DataNavigateUrlFormatString="showinboxmes.aspx?subject={0}"
                            DataTextField="to1" HeaderText="To" NavigateUrl="~/adminsentitems.aspx">
                            <HeaderStyle BackColor="Black" />
                        </asp:HyperLinkField>
                        <asp:HyperLinkField DataNavigateUrlFields="subject" DataNavigateUrlFormatString="showinboxmes.aspx?subject={0}"
                            DataTextField="Subject" HeaderText="Subject" NavigateUrl="~/adminsentitems.aspx">
                            <HeaderStyle BackColor="Black" />
                        </asp:HyperLinkField>
                        <asp:HyperLinkField DataNavigateUrlFields="subject" DataNavigateUrlFormatString="showinboxmes.aspx?subject={0}"
                            DataTextField="date" HeaderText="Date" NavigateUrl="~/adminsentitems.aspx">
                            <HeaderStyle BackColor="Black" />
                        </asp:HyperLinkField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 14%; height: 100%">
                &nbsp;<asp:Button ID="Butdelete1" runat="server" OnClick="Butdelete1_Click" SkinID="Button1"
                    Text="Delete" /></td>
            <td style="height: 100%">
                &nbsp;</td>
            <td style="width: 72%; height: 100%">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label></td>
        </tr>
    </table>
</asp:Content>


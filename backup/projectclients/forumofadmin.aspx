<%@ Page Language="C#" MasterPageFile="~/projectclients/PCMasterPage.master" AutoEventWireup="true" CodeFile="forumofadmin.aspx.cs" Inherits="forumofadmin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <table style="width: 796px; position: static; border-left-color: #ffffff; border-bottom-color: #ffffff; border-top-style: solid; border-top-color: #ffffff; border-right-style: solid; border-left-style: solid; height: 83px; background-color: silver; border-right-color: #ffffff; border-bottom-style: solid;">
                <tr>
                    <td style="width: 100%; height: 100%">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/formsof.jpg" Height="77px" Width="689px" /></td>
                </tr>
                    <tr>
                        <td style="width: 100%; height: 100%" align="center">
                            <asp:Label ID="Label6" runat="server" Text="Forums of the Eccentric" Width="253px" Font-Size="X-Large" style="position: static" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 99%;" align="center">
                            <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" BorderColor="#999999"
                                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                                Height="132px" Style="position: static" Width="480px" AllowPaging="True" DataSourceID="SqlDataSource1">
                                <FooterStyle BackColor="#CCCCCC" />
                                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eccentricConnectionString2 %>"
                                SelectCommand="SELECT [subject], [username], [authority], [message], [dateofpost] FROM [forums]"></asp:SqlDataSource>
                        
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 17px;" align="center">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        </td>
                    </tr>
                </table>
</asp:Content>


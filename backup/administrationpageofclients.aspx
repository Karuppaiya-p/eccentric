<%@ Page Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="administrationpageofclients.aspx.cs" Inherits="administrationpageofclients" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <table style="position: static; border-left-color: white; border-bottom-color: white; border-top-style: solid; border-top-color: white; border-right-style: solid; border-left-style: solid; border-right-color: white; border-bottom-style: solid; background-color: silver; width: 796px;">
                    <tr>
                        <td colspan="3" align="center">
                            <img src="images/clientsofeccentric.jpg" style="width: 634px; height: 67px" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 103px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <asp:Label ID="Labeltitle" runat="server" Font-Size="X-Large" Height="18px" Text="CLIENTS INFORMASTION  OF ECCENTRIC NETWORK"
                                Width="635px" Font-Bold="True" Font-Underline="True" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 16px;">
                        </td>
                        <td style="width: 100px; height: 16px;">
                        </td>
                        <td style="width: 103px; height: 16px;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 94px">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1"
                                ForeColor="Black" GridLines="Vertical" Width="520px" Height="120px">
                                <FooterStyle BackColor="#CCCCCC" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eccentricConnectionString2 %>"
                                SelectCommand="SELECT firstname, lastname, username, authority, phoneno, email, Dateofbirth,location FROM usersdetails WHERE (authority = 'client')" UpdateCommand="UPDATE usersdetails SET firstname = @firstname, lastname = @lastname, password = @password, authority = @authority, email = @email, Dateofbirth = @Dateofbirth, securityquestion = @securityquestion, answer = @answer, location = @location WHERE (username = @username)">
                                <UpdateParameters>
                                    <asp:Parameter Name="firstname" />
                                    <asp:Parameter Name="lastname" />
                                    <asp:Parameter Name="password" />
                                    <asp:Parameter Name="authority" />
                                    <asp:Parameter Name="email" />
                                    <asp:Parameter Name="Dateofbirth" />
                                    <asp:Parameter Name="securityquestion" />
                                    <asp:Parameter Name="answer" />
                                    <asp:Parameter Name="location" />
                                    <asp:Parameter Name="username" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                <tr>
                    <td colspan="3" style="height: 23px" align="center">
                        <asp:LinkButton ID="LinkBregeis" runat="server" Font-Bold="True" Font-Size="X-Large"
                            ForeColor="Black" OnClick="LinkBregeis_Click">Create Net Client</asp:LinkButton>
                    </td>
                </tr>
                </table>
            
</asp:Content>


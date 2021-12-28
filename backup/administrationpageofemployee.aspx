<%@ Page Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="administrationpageofemployee.aspx.cs" Inherits="administrationpageofemployee" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <table style="position: static; width: 796px; height: 347px; border-left-color: white; border-bottom-color: white; border-top-style: solid; border-top-color: white; border-right-style: solid; border-left-style: solid; background-color: silver; border-right-color: white; border-bottom-style: solid;">
                    <tr>
                        <td style="width: 100%; height: 1%;" valign="top" align="center">
                            <img src="images/employessofeccentic.jpg" style="width: 661px; height: 68px" /></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="height: 27px" align="center">
                            <asp:Label ID="Labeltitle" runat="server" Font-Size="X-Large" Height="18px" Text="EMPLOYEES INFORMATION  OF ECCENTRIC NETWORK"
                                Width="660px" Font-Bold="True" Font-Underline="True" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="height: 11px">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1"
                                ForeColor="Black" GridLines="Vertical">
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
                                SelectCommand="SELECT firstname, lastname, username,authority, phoneno, email, Dateofbirth,location FROM usersdetails WHERE (authority != 'client')" UpdateCommand="UPDATE usersdetails SET firstname = @firstname, lastname = @lastname, password = @password, authority = @authority, email = @email, Dateofbirth = @Dateofbirth, securityquestion = @securityquestion, answer = @answer, location = @location WHERE (username = @username)">
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
                    <td colspan="4" style="height: 23px" align="center">
                        <asp:LinkButton ID="LinkBregeis" runat="server" Font-Bold="True" Font-Size="X-Large"
                            ForeColor="Black" OnClick="LinkBregeis_Click" Width="243px">Create New Employee</asp:LinkButton></td>
                </tr>
                </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="administrationpageofprojects.aspx.cs" Inherits="administrationpage" Title="Untitled Page" Theme="admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="position: static; border-left-color: #ffffff; border-bottom-color: #ffffff; border-top-style: solid; border-top-color: #ffffff; border-right-style: solid; border-left-style: solid; background-color: silver; border-right-color: #ffffff; border-bottom-style: solid; width: 796px;">
                    <tr>
                        <td colspan="3" align="center">
                            <img src="images/projectofeccentric.jpg" style="width: 667px" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 28px;">
                        </td>
                        <td style="width: 100px; height: 28px;">
                        </td>
                        <td style="width: 103px; height: 28px;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <asp:Label ID="Labeltitle" runat="server" Font-Size="X-Large" Height="18px" Text="PROJECTS OF ECCENTRIC NETWORK"
                                Width="446px" Font-Bold="True" Font-Underline="True" ForeColor="Black"></asp:Label></td>
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
                        <td colspan="3" style="height: 199px">
                            <asp:GridView ID="GridView1" runat="server"
                                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px"
                                CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="135px" Width="661px">
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
                                SelectCommand="SELECT * FROM [projectdetails]" DeleteCommand="DELETE FROM projectdetails WHERE (projectid = @projectid)" UpdateCommand="UPDATE projectdetails SET projectname = @projectname, projectstatus = @projectstatus, startdate = @startdate, complectiondate = @complectiondate, clientname = @clientname, clientlocation = @clientlocation, projectdescription = @projectdescription, adinformation = @adinformation WHERE (projectid = @projectid)" InsertCommand="INSERT INTO projectdetails(projectid, projectname, projectstatus, startdate, complectiondate, clientname, clientlocation, projectdescription, adinformation) VALUES (@projectid, @projectname, @projectstatus, @startdate, @complectiondate, @clientname, @clientlocation, @projectdescription, @adinformation)">
                                <DeleteParameters>
                                    <asp:Parameter Name="projectid" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="projectname" />
                                    <asp:Parameter Name="projectstatus" />
                                    <asp:Parameter Name="startdate" />
                                    <asp:Parameter Name="complectiondate" />
                                    <asp:Parameter Name="clientname" />
                                    <asp:Parameter Name="clientlocation" />
                                    <asp:Parameter Name="projectdescription" />
                                    <asp:Parameter Name="adinformation" />
                                    <asp:Parameter Name="projectid" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="projectid" />
                                    <asp:Parameter Name="projectname" />
                                    <asp:Parameter Name="projectstatus" />
                                    <asp:Parameter Name="startdate" />
                                    <asp:Parameter Name="complectiondate" />
                                    <asp:Parameter Name="clientname" />
                                    <asp:Parameter Name="clientlocation" />
                                    <asp:Parameter Name="projectdescription" />
                                    <asp:Parameter Name="adinformation" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" OnClick="LinkButton1_Click">Create New Project</asp:LinkButton></td>
                    </tr>
                </table>
</asp:Content>


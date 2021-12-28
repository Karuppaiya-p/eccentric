<%@ Page Language="C#" MasterPageFile="~/projectclients/PCMasterPage.master" AutoEventWireup="true" CodeFile="newsinadmin.aspx.cs" Inherits="newsinadmin" Title="Untitled Page" Theme="admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 796px; height: 369px">
        <tr>
            <td style="border-left-color: #ffffff; border-bottom-color: #ffffff; width: 100px;
                border-top-style: solid; border-top-color: #ffffff; border-right-style: solid;
                border-left-style: solid; background-color: silver; border-right-color: #ffffff;
                border-bottom-style: solid; height: 284px;" align="center" valign="top">
                
                <table style="width: 47%; position: static; height: 1%;" align="center">
                    <tr>
                        <td style="width: 100%; height: 100%; text-align: justify;" align="center">
                            <img src="../images/NewsofEccentric.jpg" style="width: 671px; height: 84px" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 100%; text-align: justify;" align="center">
                            <asp:Label ID="Label6" runat="server" Text="News of the Eccentric" Width="180px" Font-Size="Large" style="position: static" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 100%; text-align: justify;" align="center"><asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True"
                    CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" Style="position: static;" Width="328px" DataSourceID="SqlDataSource1" OnItemDeleting="DetailsView1_ItemDeleting" >
                    <FooterStyle BackColor="#404040" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="Gray" Font-Bold="True" />
                            <RowStyle BackColor="#E3EAEB" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eccentricConnectionString2 %>"
                                SelectCommand="SELECT * FROM [news]" DeleteCommand="delete [news] where subject='@subject'" UpdateCommand="UPDATE news SET message = @message, dateofpost = @dateofpost WHERE (subject = @subject)">
                                <UpdateParameters>
                                    <asp:Parameter Name="message" />
                                    <asp:Parameter Name="dateofpost" />
                                    <asp:Parameter Name="subject" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


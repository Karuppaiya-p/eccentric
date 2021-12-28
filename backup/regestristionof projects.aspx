<%@ Page Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="regestristionof projects.aspx.cs" Inherits="regestristionof_projects" Title="Untitled Page" Theme="admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border-left-color: #ffffff; border-bottom-color: #ffffff; width: 796px;
        border-top-style: solid; border-top-color: #ffffff; border-right-style: solid;
        border-left-style: solid; background-color: silver; border-right-color: #ffffff;
        border-bottom-style: solid">
        <tr>
            <td style="width: 100px">
            <table  style="font-weight: bold; text-transform: capitalize;
                    width: 19%; color: #000000; position: static; height: 1%; border-left-color: white; border-bottom-color: white; border-top-color: white; border-right-color: white;">
                    <caption style="font-size: x-large">
                        <span style="color: white">
                        PROJECT DETAILS</span></caption>
                <tr>
                    <td colspan="4" align="left" style="width: 100%; height: 100%; ">
                <asp:Label ID="Label10" runat="server" Style="position: static;
                    top: 0px" Text="Label" Visible="False" Height="9px"></asp:Label></td>
                </tr>
                    <tr>
                        <td style="width: 100%; height: 100%;" align="left">
                            </td>
                        <td style="width: 100%; height: 100%;">
                            </td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 100%;" align="left">
                            <asp:Label ID="Label2" runat="server" Text="Project Name:" Width="153px"></asp:Label></td>
                        <td style="width: 100%; height: 100%;">
                            <asp:TextBox ID="txtPName" runat="server" Width="174px"></asp:TextBox></td>
                        <td style="width: 100%; ; height: 100%;">
                        </td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                    </tr>
                    <tr>
                        <td  style="width: 100%; height: 100%;" align="left">
                            <asp:Label ID="Label3" runat="server" Text="Project Status:" Width="112px"></asp:Label></td>
                        <td style="width: 100%; height: 100%;">
                            <asp:TextBox ID="txtPStatus" runat="server" Height="17px" Width="174px"></asp:TextBox></td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                    </tr>
                    <tr>
                        <td  style="width: 100%;" align="left">
                            <asp:Label ID="Label4" runat="server" Text="Start Date:" Width="85px"></asp:Label></td>
                        <td style="width: 100%; ">
                            <asp:TextBox ID="txtSDate" runat="server" Width="176px"></asp:TextBox>
                        </td>
                        <td style="width: 100%; ">
                            <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click1" Height="26px" ImageUrl="~/images/reo.gif" Width="31px" /></td>
                        <td style="width: 100%; ">
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black"
                                DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black"
                                Height="91px" NextPrevFormat="FullMonth" TitleFormat="Month" Visible="False"
                                Width="92px" OnSelectionChanged="Calendar1_SelectionChanged">
                                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                                <TodayDayStyle BackColor="#CCCC99" />
                                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
                                    ForeColor="#333333" Width="1%" />
                                <DayStyle Width="14%" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333"
                                    Height="10pt" />
                                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White"
                                    Height="14pt" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td  style="width: 100%;" align="left">
                            <asp:Label ID="Label5" runat="server" Text="Completion Date:" Width="153px"></asp:Label></td>
                        <td style="width: 100%;">
                            <asp:TextBox ID="txtCDate" runat="server" Width="175px"></asp:TextBox></td>
                        <td style="width: 100%;">
                            <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click1" ImageUrl="~/images/reo.gif" Width="29px" /></td>
                        <td style="width: 100%;">
                            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black"
                                DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black"
                                Height="147px" NextPrevFormat="FullMonth" TitleFormat="Month" Visible="False"
                                Width="122px" OnSelectionChanged="Calendar2_SelectionChanged">
                                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                                <TodayDayStyle BackColor="#CCCC99" />
                                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
                                    ForeColor="#333333" Width="1%" />
                                <DayStyle Width="14%" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333"
                                    Height="10pt" />
                                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White"
                                    Height="14pt" />
                            </asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="dimgray" style="width: 100%; height: 100%;" align="left">
                            <asp:Label ID="Label6" runat="server" Text="Client Name:" Width="152px"></asp:Label></td>
                        <td style="width: 100%; height: 100%;">
                            <asp:TextBox ID="txtCName" runat="server" Width="178px"></asp:TextBox></td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                    </tr>
                    <tr>
                        <td  style="width: 100%; height: 100%;" align="left">
                            <asp:Label ID="Label7" runat="server" Text="Client Location:" Width="151px"></asp:Label></td>
                        <td style="width: 100%; height: 100%;">
                            &nbsp;<asp:DropDownList ID="ddlocation" runat="server" Style="position: static" Width="178px">
                                <asp:ListItem>Afghanistan</asp:ListItem>
                                <asp:ListItem>Argentina</asp:ListItem>
                                <asp:ListItem>Bangladesh</asp:ListItem>
                                <asp:ListItem>Bhutan</asp:ListItem>
                                <asp:ListItem>Canada</asp:ListItem>
                                <asp:ListItem>Denmark</asp:ListItem>
                                <asp:ListItem>Egypt</asp:ListItem>
                                <asp:ListItem>Finland</asp:ListItem>
                                <asp:ListItem>France</asp:ListItem>
                                <asp:ListItem>Germany</asp:ListItem>
                                <asp:ListItem>Hong Kong</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Indonesia</asp:ListItem>
                                <asp:ListItem>Srilanka</asp:ListItem>
                                <asp:ListItem>Switzerland</asp:ListItem>
                                <asp:ListItem>Turkey</asp:ListItem>
                                <asp:ListItem>United States</asp:ListItem>
                                <asp:ListItem>Zambia</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 100%;" align="left">
                            <asp:Label ID="Label8" runat="server" Text="Project Description:" Width="153px"></asp:Label></td>
                        <td style="width: 100%; height: 100%;">
                            <asp:TextBox ID="txtPDescription" runat="server" TextMode="MultiLine" Width="177px"></asp:TextBox></td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                    </tr>
                    <tr>
                        <td  style="width: 100%; height: 100%;" align="left">
                            <asp:Label ID="Label9" runat="server" Text="Aditional Information:" Width="152px"></asp:Label></td>
                        <td style="width: 100%; height: 100%;">
                            <asp:TextBox ID="txtAdI" runat="server" Width="177px"></asp:TextBox></td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                        <td style="width: 100%; height: 100%;">
                        </td>
                    </tr>
                <tr>
                    <td  style="width: 100%; height: 100%; " align="right">
                    </td>
                    <td style="width: 100%; height: 100%">
                        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" Width="72px" SkinID="Button1" />
                        <asp:Button ID="BtnBack" runat="server" SkinID="Button1" Text="Back" OnClick="BtnBack_Click" /></td>
                    <td style="width: 100%; height: 100%">
                    </td>
                    <td style="width: 100%; height: 100%">
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>


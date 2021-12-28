<%@ Page Language="C#" MasterPageFile="~/projectclients/PCMasterPage.master" AutoEventWireup="true" CodeFile="showdetails.aspx.cs" Inherits="showdetails" Title="Untitled Page"  Theme="admin1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    <table style="width: 796px; position: static; height: 553px; border-left-color: white; border-bottom-color: white; border-top-style: solid; border-top-color: white; border-right-style: solid; border-left-style: solid; border-right-color: white; border-bottom-style: solid; background-color: silver;">
                        <tr>
                            <td align="center" colspan="3" style="height: 30px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Style="position: static;" Text="Details of Account" Width="224px" Font-Underline="True" ForeColor="Black"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3" style="height: 30px">
                                <asp:Label ID="Label2" runat="server" Style="left: -62px; position: static;
                                    top: -27px" Text="Get Started with your Account" Font-Bold="True" ForeColor="Black"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 30px" align="center">
                                &nbsp;<asp:Label ID="Label18" runat="server" Visible="False" Width="87px" ForeColor="Black"></asp:Label>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 27px">
                                <asp:Label ID="Label3" runat="server" Style="position: static;" Text="First Name:" Width="88px" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 27px" align="left">
                                <asp:TextBox ID="txtFirst" runat="server" style="position: static;" ></asp:TextBox></td>
                            <td align="center" style="width: 100px; height: 27px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 21px">
                                <asp:Label ID="Label4" runat="server" Style="position: static;" Text="Last Name:" Width="123px" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 21px" align="left">
                                <asp:TextBox ID="txtlast" runat="server" style="position: static;"></asp:TextBox></td>
                            <td align="center" style="width: 100px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 1px">
                                <asp:Label ID="Label5" runat="server" Style="position: static;" Text="Desired Login Name" Width="169px" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 1px" align="left">
                                <asp:TextBox ID="txtdesired" runat="server" Style="position: static;" ></asp:TextBox>
                                &nbsp;&nbsp;
                                <asp:Label ID="Label19" runat="server" Text="Label" Visible="False"></asp:Label></td>
                            <td align="left" style="width: 100px; height: 1px">
                                <asp:Label ID="Label6" runat="server" Style="position: static;" Text="@eccentric.com" ForeColor="Black"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 4px">
                            </td>
                            <td align="left" style="width: 100px; height: 4px">
                                <asp:Label ID="Label7" runat="server" Style="left: 93px; position: static;
                                    top: 0px" Text="Examples:Sramu,Ramuc" ForeColor="Black"></asp:Label></td>
                            <td align="center" style="width: 100px; height: 4px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 23px" align="center">
                                <asp:Button ID="Button1" runat="server" Style="position: relative; left: 32px; top: 0px;" Text="Check Availability!" OnClick="Button1_Click" SkinID="Button1" />
                            </td>
                            <td align="center" colspan="1" style="height: 23px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 3px">
                                <asp:Label ID="Label15" runat="server" Style="position: static;" Text="Authority:" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 3px" align="left">
                                &nbsp;
                                <asp:ListBox ID="ListBoxauthority" runat="server" Height="24px" 
                                    Style="position: static;" Width="150px">
                                    <asp:ListItem>Admin</asp:ListItem>
                                    <asp:ListItem>project leader</asp:ListItem>
                                    <asp:ListItem>project member</asp:ListItem>
                                    <asp:ListItem>client</asp:ListItem>
                                </asp:ListBox></td>
                            <td align="center" style="width: 100px; height: 3px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 32px">
                                <asp:Label ID="Label16" runat="server" Style="position: static;" Text="Phone no:" Width="83px" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 32px" align="left">
                                <asp:TextBox ID="txtphone" runat="server" Style="position: static;" Width="145px"></asp:TextBox>
                            </td>
                            <td align="center" style="width: 100px; height: 32px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 25px">
                                <asp:Label ID="Label17" runat="server" Style="position: static;" Text="Date of birth" Width="160px" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 25px" align="left">
                                <asp:TextBox ID="txtdob" runat="server" Style="position: static;"></asp:TextBox>
                            </td>
                            <td align="center" style="width: 100px; height: 25px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 1px">
                                <asp:Label ID="Label8" runat="server" Style="position: static;" Text=" Password:" Width="68px" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 1px" align="left">
                                <asp:TextBox ID="txtcpassword" runat="server" Style="position: static;" TextMode="Password"></asp:TextBox>
                                &nbsp;
                            </td>
                            <td align="left" style="width: 100px; height: 1px">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="please verify your password"
                                    Style="position: static;" ControlToCompare="txtcpassword" ControlToValidate="txtreenter" Width="219px"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="height: 24px">
                                <asp:Label ID="Label10" runat="server" Style="position: static;" Text="(Minimum of eight characters in length)" Width="296px" ForeColor="Black"></asp:Label></td>
                            <td align="center" colspan="1" style="height: 24px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 28px">
                                <asp:Label ID="Label9" runat="server" Style="position: static;" Text="Reenter Password:" Width="169px" Visible="False" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 28px" align="left">
                                <asp:TextBox ID="txtreenter" runat="server" Style="position: static;" Width="222px" Visible="False" TextMode="Password" ></asp:TextBox>&nbsp;
                            </td>
                            <td align="left" style="width: 100px; height: 28px">
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="rewrite your confirm password"
                                    Style="position: static;" ControlToCompare="txtreenter" ControlToValidate="txtcpassword" Width="269px" Visible="False"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 34px;">
                                <asp:Label ID="Label11" runat="server" Style="position: static;" Text="Security Question:" Width="178px" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 34px;" align="left">
                                <asp:DropDownList ID="ddquestion" runat="server" 
                                    Style="position: static;" Width="220px">
                                    <asp:ListItem>Choose a question</asp:ListItem>
                                    <asp:ListItem>what is your primary frequent flyer number</asp:ListItem>
                                    <asp:ListItem>what is your library card number</asp:ListItem>
                                    <asp:ListItem>what was your first phone number</asp:ListItem>
                                    <asp:ListItem>what was your teachers name</asp:ListItem>
                                    <asp:ListItem>write my own question</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="center" style="width: 100px; height: 34px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 35px;">
                                <asp:Label ID="Label12" runat="server" Style="position: static;" Text="Answer:" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 35px;" align="center">
                                <asp:TextBox ID="txtanswer" runat="server" Style="position: static;" Width="269px"></asp:TextBox>
                            </td>
                            <td align="center" style="width: 100px; height: 35px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 29px;">
                                <asp:Label ID="Label13" runat="server" Style="position: static;" Text="Secondary Mail:" Width="160px" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 29px;" align="left">
                                <asp:TextBox ID="txtsecondary" runat="server" Style="position: static;" Width="270px" ></asp:TextBox>
                            </td>
                            <td align="center" style="width: 100px; height: 29px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 41px; height: 17px;">
                                <asp:Label ID="Label14" runat="server" Style="position: static;" Text="Location:" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="width: 100px; height: 17px;" align="left">
                                <asp:DropDownList ID="ddlocation" runat="server" Style="position: static;">
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
                                </asp:DropDownList>
                            </td>
                            <td align="center" style="width: 100px; height: 17px">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 41px;" colspan="2" align="center">
                                <asp:Button ID="Button2" runat="server" Style="position: static;" Text="I accept.Create my Account" OnClick="Button2_Click" SkinID="Button1" />
                            </td>
                            <td align="center" colspan="1" style="height: 41px">
                                <asp:Button ID="Button3" runat="server" Text="Edit" SkinID="Button1" OnClick="Button3_Click1" Width="61px" />
                                <asp:Button ID="Butback" runat="server" OnClick="Butback_Click" SkinID="Button1"
                                    Text="Back" /></td>
                        </tr>
                    </table>
</asp:Content>


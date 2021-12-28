<%@ Page Language="C#" MasterPageFile="~/login1/MasterPage.master" AutoEventWireup="true" CodeFile="forgetofpassword.aspx.cs" Inherits="login1_forgetofpassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 757px; height: 373px; border-left-color: #ffffff; border-bottom-color: #ffffff; border-top-style: solid; border-top-color: #ffffff; border-right-style: solid; border-left-style: solid; border-right-color: #ffffff; border-bottom-style: solid;">
        <tr>
            <td style="width: 100px; background-color: gray">
                <table align="center" style="width: 543px; height: 252px">
                    <tr>
                        <td align="center" colspan="3">
                            <asp:Label ID="titelfpass" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True"
                                ForeColor="#FF6600" Height="34px" Style="position: static" Text="Did You Forget the Password"
                                Width="471px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="hintlab" runat="server" Font-Bold="True" ForeColor="White" Height="28px"
                                Style="position: static" Text="Enter Your Hint :" Width="171px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Texhint" runat="server" Style="position: static" Width="241px"></asp:TextBox></td>
                        <td rowspan="2" style="width: 100px">
                            <asp:Button ID="findbtn" runat="server" BackColor="Black" BorderColor="Gray" ForeColor="White"
                                OnClick="findbtn_Click" Style="position: static" Text="Find" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="dblab" runat="server" Font-Bold="True" ForeColor="White" Height="28px"
                                Style="position: static" Text="Enter Your Date of Birth:" Width="172px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Texbith" runat="server" Style="position: static" Width="159px">  /  /</asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <asp:Label ID="passlab" runat="server" Font-Bold="True" ForeColor="White" Height="21px"
                                Style="position: static" Text="Your Password is" Visible="False" Width="156px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 27px">
                            <asp:TextBox ID="Texpass" runat="server" Style="position: static" Visible="False"
                                Width="241px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td id="TD1" align="center" colspan="3">
                            <asp:Label ID="sorylab" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"
                                Height="49px" Style="position: static" Text="Sorry Did not match" Visible="False"
                                Width="253px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="okbtn" runat="server" BackColor="Black" BorderColor="Gray" ForeColor="White"
                                OnClick="okbtn_Click" Style="position: static" Text="Ok" Width="73px" /></td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


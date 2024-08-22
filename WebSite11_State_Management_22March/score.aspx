<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="score.aspx.cs" Inherits="score" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="auto-style1" style="text-align:left;">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Student ID: "></asp:Label>
                &nbsp;<asp:Label ID="lbl_id" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_email" runat="server" Text="Course Name:"></asp:Label>
&nbsp;<asp:Label ID="lbl_cname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:left;">
                <table cellpadding="5" cellspacing="5" class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td rowspan="4">
&nbsp;
                            <asp:Label ID="lbl_score" runat="server" Font-Bold="True" Font-Size="54pt" ForeColor="White"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                <asp:Button ID="Button3" runat="server" BackColor="#FFCC00" Font-Bold="True" OnClick="Button3_Click" Text="Exit" Width="156px" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">&nbsp; </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center;">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center;">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center;">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


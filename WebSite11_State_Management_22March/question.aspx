<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="question.aspx.cs" Inherits="question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
    </style>
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
            <td class="auto-style2">
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align:left;">
                <table cellpadding="5" cellspacing="5" class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            <asp:Label ID="lbl_qid" runat="server" Text="1"></asp:Label>
&nbsp;:
                            <asp:Label ID="lbl_qname" runat="server"></asp:Label>
                        </td>
                        <td>Marks :&nbsp;
                            <asp:Label ID="lbl_score" runat="server" Text="0"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="a" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="a" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button4" runat="server" BackColor="#FFCC00" Text="Submit" Width="150px" OnClick="Button4_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button5" runat="server" BackColor="#FFCC00" OnClick="Button5_Click" Text="Next" Width="150px" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            <asp:Label ID="lbl_title" runat="server" ForeColor="Lime"></asp:Label>
&nbsp;
                            <asp:Label ID="lbl_ans" runat="server" ForeColor="Lime"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                <asp:Button ID="Button3" runat="server" BackColor="#FFCC00" Font-Bold="True" OnClick="Button3_Click" Text="Submit Exam" Width="156px" />
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


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border:1px solid black;width:400px;margin:10px auto;">
        <fieldset>
            <legend>SignUp</legend>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbl_msg" runat="server" ForeColor="Lime"></asp:Label>
&nbsp;
                        <asp:Label ID="lbl_id" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Student ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="textid" runat="server" Width="180px" BackColor="#999999" BorderColor="#999999" ReadOnly="True">Auto Generate</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Student Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="textname" runat="server" Width="180px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Student Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="textemail" runat="server" Width="180px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Student Age"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="textage" runat="server" Width="180px" TextMode="Number"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="textage" Display="Dynamic" ErrorMessage="Age is invalide" ForeColor="Red" MaximumValue="100" MinimumValue="18" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Student Gender"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Student City"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl_city" runat="server" Width="182px">
                            <asp:ListItem Value="0">--Select City--</asp:ListItem>
                            <asp:ListItem>Gurgaon</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Noida</asp:ListItem>
                            <asp:ListItem>Faridabad</asp:ListItem>
                            <asp:ListItem>Sonipat</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Student Qualification"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl_qualification" runat="server" Width="182px">
                            <asp:ListItem Value="0">--Select Qualification--</asp:ListItem>
                            <asp:ListItem>BA</asp:ListItem>
                            <asp:ListItem>BCOM</asp:ListItem>
                            <asp:ListItem>BSC</asp:ListItem>
                            <asp:ListItem>BTECH</asp:ListItem>
                            <asp:ListItem>Graduation</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="textpwd" runat="server" Width="180px" TextMode="Password" ValidationGroup="a"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textpwd" Display="Dynamic" ErrorMessage="password can not be blank" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="textcpwd" runat="server" Width="180px" TextMode="Password" ValidationGroup="a"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textcpwd" Display="Dynamic" ErrorMessage="password can not be blank" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="textpwd" ControlToValidate="textcpwd" Display="Dynamic" ErrorMessage="password not matched." ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="submit_btn" runat="server" OnClick="submit_btn_Click" Text="Submit" Width="190px" BackColor="Yellow" Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lbl_error" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>


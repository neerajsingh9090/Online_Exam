<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border:1px solid black;width:400px;margin:100px auto;">
    
        <fieldset>  
            <legend>LogIn</legend>
          <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Student ID" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="textid" runat="server" Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="textpwd" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="login_btn" runat="server" Text="LogIn" Width="190px" OnClick="login_btn_Click" BackColor="Yellow" Font-Bold="True" ForeColor="Black" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lbl_error" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
    </fieldset>
    </div>
</asp:Content>


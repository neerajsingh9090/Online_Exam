<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>

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
                <asp:Label ID="lbl_email" runat="server" Text="Student Email:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:BulletedList ID="BulletedList1" runat="server">
                    <asp:ListItem>You must use a functioning webcam and microphone</asp:ListItem>
                    <asp:ListItem>No cell phones or other secondary devices in the room or test area</asp:ListItem>
                    <asp:ListItem>Your desk/table must be clear or any materials except your test-taking device</asp:ListItem>
                    <asp:ListItem>No one else can be in the room with you</asp:ListItem>
                    <asp:ListItem>No talking </asp:ListItem>
                    <asp:ListItem>No use of additional applications or internet</asp:ListItem>
                </asp:BulletedList>
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [cid] = @cid" InsertCommand="INSERT INTO [course] ([cname], [cid]) VALUES (@cname, @cid)" SelectCommand="SELECT [cname], [cid] FROM [course]" UpdateCommand="UPDATE [course] SET [cname] = @cname WHERE [cid] = @cid">
                    <DeleteParameters>
                        <asp:Parameter Name="cid" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cname" Type="String" />
                        <asp:Parameter Name="cid" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cname" Type="String" />
                        <asp:Parameter Name="cid" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                <asp:Label ID="Label4" runat="server" Text="Select Exam:"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                <asp:Button ID="Button3" runat="server" BackColor="#FFCC00" Font-Bold="True" Text="Start Test" Width="300px" OnClick="Button3_Click" />
            </td>
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


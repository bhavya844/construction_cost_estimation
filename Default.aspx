<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table width="50%">
            <tr>
                <td width="50%" align="right">
                    <asp:Label ID="Lable1" runat="server" Text="ID  :-"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="id" runat="server" Width="127px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="50%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="Password :-"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="pass" runat="server" Width="127px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
    &nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
    </div>

</asp:Content>
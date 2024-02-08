<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rate.aspx.cs" Inherits="Rate" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

<div>
    
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#FF9900" Text="Update Rates"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Labour Rate  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="Lab" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator5" ControlToValidate="Lab" 
        runat="server" Type="Integer" 
        MinimumValue="20" MaximumValue="9999" 
        ErrorMessage="Please Enter Proper Input" Font-Size="Small" 
        ForeColor="Red" />

    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Cement &amp; Concrete  Rate  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="CC" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator6" ControlToValidate="CC" 
        runat="server" Type="Integer" 
        MinimumValue="20" MaximumValue="9999999" 
        ErrorMessage="Please Enter Proper Input" Font-Size="Small" 
        ForeColor="Red" />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Steel Rate  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="Steel" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator7" ControlToValidate="Steel" 
        runat="server" Type="Integer" 
        MinimumValue="20" MaximumValue="9999999" 
        ErrorMessage="Please Enter Proper Input" Font-Size="Small" 
        ForeColor="Red" />

    <br />
    <br />
&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Bricks Rate  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="Brick" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator8" ControlToValidate="Brick" 
        runat="server" Type="Integer" 
        MinimumValue="5" MaximumValue="9999" 
        ErrorMessage="Please Enter Proper Input" Font-Size="Small" 
        ForeColor="Red" />

    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    
</div>

</asp:Content>
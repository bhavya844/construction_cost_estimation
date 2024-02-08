<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="Create" %>


<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            ForeColor="#FF9900" Text="Project Details"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="86px">
            <asp:Label ID="Label2" runat="server" Text="Project Name  :-"></asp:Label>
            &nbsp;
            <asp:TextBox ID="PName" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Next" />
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" Height="249px" Visible="False">
            <asp:Label ID="Label3" runat="server" Text="No Of Floors   :-"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>&gt;10</asp:ListItem>
                <asp:ListItem>&lt;10</asp:ListItem>
                <asp:ListItem>&lt;20</asp:ListItem>
                <asp:ListItem>&lt;30</asp:ListItem>
                <asp:ListItem>&lt;40</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label71" runat="server" Text="No Of Flats  :-"></asp:Label>
&nbsp;&nbsp;<asp:DropDownList ID="DropDownList10" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="No Of Parking Floors   :-"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Type  :-"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>1BHK</asp:ListItem>
                <asp:ListItem>2BHK</asp:ListItem>
                <asp:ListItem>3BHK</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Next" />
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" Height="212px" Visible="False">
            <asp:Label ID="Label5" runat="server" Text="Swimming Pool   :-"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem>Medium</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Gym   :-"></asp:Label>
&nbsp;
            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem>Medium</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Lift   :-"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Elevator Type   :-"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>6 Per</asp:ListItem>
                <asp:ListItem>8 Per</asp:ListItem>
                <asp:ListItem>10 Per</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" />
        </asp:Panel>
        <br />
            <asp:Panel ID="Panel8" runat="server" Height="168px" Visible="False">
                <br />
                <asp:Label ID="Label29" runat="server" Font-Size="X-Large" Font-Underline="True" 
                    Text="Labour's Cost For Project" ForeColor="#FF9900"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="No Of Labour  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="labour" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label30" runat="server" Text="Labour Cost  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Text="Next" Width="41px" 
                    onclick="Button4_Click" />
            </asp:Panel>
        <br />
        <asp:Panel ID="Panel7" runat="server" Height="1392px">
            <asp:Panel ID="Panel9" runat="server" Height="283px" Visible="False">
                <asp:Label ID="Label13" runat="server" Text="Raw Material Cost For Project" 
                    Font-Size="X-Large" Font-Underline="True" ForeColor="#FF9900"></asp:Label>
                &nbsp;
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Text="Cement And Concrete  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="cement" runat="server" Text="Label"></asp:Label>
                &nbsp;<asp:Label ID="Label50" runat="server" Text="Tons"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="Label47" runat="server" Text="Cost  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Label44" runat="server" Text="Rs. "></asp:Label>
                <asp:Label ID="CCost" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" Text="Steel  :-"></asp:Label>
&nbsp;
                <asp:Label ID="steel" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label52" runat="server" Text="Tons"></asp:Label>
                &nbsp;&nbsp;
                <br />
                <asp:Label ID="Label48" runat="server" Text="Cost  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Label45" runat="server" Text="Rs. "></asp:Label>
                <asp:Label ID="SCost" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;<br />
                <br />
                &nbsp;<asp:Label ID="Label18" runat="server" Text="Bricks  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="bricks" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label54" runat="server" Text="Piece"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="Label49" runat="server" Text="Cost  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Label46" runat="server" Text="Rs. "></asp:Label>
                <asp:Label ID="BCost" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Button ID="Button5" runat="server" Text="Next" onclick="Button5_Click" />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel13" runat="server" Height="203px" Visible="False">
                <asp:Label ID="Label32" runat="server" Font-Size="X-Large" Font-Underline="True" 
                    Text="Accessorize Cost For Project" ForeColor="#FF9900"></asp:Label>
                &nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label33" runat="server" Text="Gymnasium  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Gym" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label34" runat="server" Text="Swimming Pool  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Pool" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label35" runat="server" Text="Elevator  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Lift" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Next" />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel12" runat="server" Height="125px" Visible="False">
                <asp:Label ID="Label26" runat="server" Text="Machinery Cost For Project" 
                    Font-Size="X-Large" Font-Underline="True" ForeColor="#FF9900"></asp:Label>
                &nbsp;
                <br />
                <br />
                <asp:Label ID="Label27" runat="server" Text="Cost  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Label56" runat="server" Text="Rs. "></asp:Label>
                <asp:Label ID="machine" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label55" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button8" runat="server" Text="Next" onclick="Button8_Click" />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel14" runat="server" Height="125px" Visible="False">
                <asp:Label ID="Label39" runat="server" Font-Size="X-Large" Font-Underline="True" 
                    Text="Days To Complete Project " ForeColor="#FF9900"></asp:Label>
                &nbsp;
                <br />
                <br />
                <asp:Label ID="Label40" runat="server" Text="Days  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Days" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                    Text="Final Report" Width="90px" />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel15" runat="server" Height="350px" Visible="False">
                <asp:Label ID="Label42" runat="server" Font-Size="X-Large" Font-Underline="True" 
                    Text="Final Report " ForeColor="#FF9900"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label67" runat="server" Text="Days  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Days0" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label64" runat="server" Text="Labour  :-  Rs."></asp:Label>
                <asp:Label ID="FLab" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label60" runat="server" Text="Raw Material  :-  Rs. "></asp:Label>
                <asp:Label ID="FRaw" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label62" runat="server" Text="Add Ons  :-   Rs."></asp:Label>
                <asp:Label ID="FAdd" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label66" runat="server" Text="Machinery  :-   Rs."></asp:Label>
                <asp:Label ID="FMac" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label57" runat="server" Text="Total Cost Of Project  :-"></asp:Label>
                &nbsp;
                <asp:Label ID="Label58" runat="server" Text="Rs. "></asp:Label>
                <asp:Label ID="Label59" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                    Text="Download" />
                <asp:Label ID="Label70" runat="server" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button13" runat="server" onclick="Button13_Click" Text="Mail" />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel16" runat="server" Height="163px" Visible="False">
                <br />
                <asp:Label ID="Label69" runat="server" Font-Size="X-Large" 
                    Font-Underline="True" ForeColor="#FF9900" Text="Mail Estimation"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label68" runat="server" Text="Mail To  :-"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Mail" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button12" runat="server" Height="28px" onclick="Button12_Click" 
                    Text="Email" />
            </asp:Panel>
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/team.master" AutoEventWireup="true" CodeFile="chooseemp.aspx.cs" Inherits="chooseemp" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Panel ID="Panel2" runat="server" Height="26px" Visible="False" 
    Width="388px">
    <table style="width: 384px">
    <tr>
    <td align="center">
        <asp:Label ID="Label2" runat="server" Text="EMPLOYEE ASSIGNED FOR THIS PROJECT" 
            Font-Bold="True" Font-Size="Small" ForeColor="#660033"></asp:Label>
    </td>
    </tr>
    </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel1" runat="server">
    
<fieldset style="font-size: small; font-weight: bold; font-family: 'times New Roman', Times, serif; width: 463px; height: 293px;">
<legend>
Choose Members
</legend>
<table style="width: 447px; height: 257px">
<tr>
<td >
    <asp:Label ID="Label5" runat="server" Text="Project Name" Width="100px"></asp:Label>
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td >
    <asp:Label ID="Label7" runat="server" Text="No Of Modules" Width="100px"></asp:Label>
   <asp:Label ID="modules" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label6" runat="server" Text="Select Employees"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Auto Assign" BackColor="#FF99FF" 
        Font-Bold="True" Font-Names="Times New Roman" onclick="Button1_Click" />
</td>

</tr>
<tr>
<td>
<table style="height: 106px; width: 378px">
<tr>
<td class="style1">
    <asp:RadioButton ID="RadioButton1" runat="server" Text="1" 
        oncheckedchanged="RadioButton1_CheckedChanged" AutoPostBack="True" 
        Enabled="False" />
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
</td>
<td>
    <asp:Label ID="Label1" runat="server" Text="Team Leader"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:RadioButton ID="RadioButton2" runat="server" Text="2" AutoPostBack="True" 
        oncheckedchanged="RadioButton2_CheckedChanged" Checked="True" 
        Enabled="False" />
</td>

<td>
    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
</td>
<td>
    <asp:DropDownList ID="DropDownList3" runat="server" Enabled="False">
        <asp:ListItem>Fieldworker</asp:ListItem>
        <asp:ListItem>Analyser</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
        <asp:ListItem>Tester</asp:ListItem>
        <asp:ListItem>EndUser Implementation</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td class="style1">
    <asp:RadioButton ID="RadioButton3" runat="server" Text="3" AutoPostBack="True" 
        oncheckedchanged="RadioButton3_CheckedChanged" Enabled="False" />
</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
</td>
<td>
    <asp:DropDownList ID="DropDownList4" runat="server" Enabled="False">
        <asp:ListItem>Fieldworker</asp:ListItem>
        <asp:ListItem>Analyser</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
        <asp:ListItem>Tester</asp:ListItem>
        <asp:ListItem>EndUser Implementation</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td class="style1">
    <asp:RadioButton ID="RadioButton4" runat="server" Text="4" AutoPostBack="True" 
        oncheckedchanged="RadioButton4_CheckedChanged" Enabled="False" />
</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
</td>
<td>
    <asp:DropDownList ID="DropDownList5" runat="server" Enabled="False">
        <asp:ListItem>Fieldworker</asp:ListItem>
        <asp:ListItem>Analyser</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
        <asp:ListItem>Tester</asp:ListItem>
        <asp:ListItem>EndUser Implementation</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td class="style1">
    <asp:RadioButton ID="RadioButton5" runat="server" Text="5" AutoPostBack="True" 
        oncheckedchanged="RadioButton5_CheckedChanged" Enabled="False" />
</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
</td>
<td>
    <asp:DropDownList ID="DropDownList6" runat="server" Height="22px" Width="166px" 
        Enabled="False">
        <asp:ListItem>Fieldworker</asp:ListItem>
        <asp:ListItem>Analyser</asp:ListItem>
        <asp:ListItem>Developer</asp:ListItem>
        <asp:ListItem>Tester</asp:ListItem>
        <asp:ListItem>EndUser Implementation</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td>
    <asp:Button ID="Button2" runat="server" Text="Save" onclick="Button2_Click" />
    </td>
    <td>
    <asp:Button ID="Button3" runat="server" Text="Cancel" onclick="Button3_Click" />
</td>
</tr>
</table>
</td>
</tr>
</table>
</fieldset>
</asp:Panel>
</asp:Content>


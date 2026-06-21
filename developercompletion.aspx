<%@ Page Language="C#" MasterPageFile="~/developer.master" AutoEventWireup="true" CodeFile="developercompletion.aspx.cs" Inherits="developercompletion" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="font-size: small; font-weight: bold; width: 360px; height: 186px;">
<legend>
Completion %
</legend>
<table style="width: 331px; height: 160px;">
<tr>
<td class="style1">
    <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
</td>
<td>
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label2" runat="server" Text="Work Assigned"></asp:Label>
</td>
<td>
    <asp:Label ID="workassigned" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label3" runat="server" Text="Completed Percentage"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Width="49px" Font-Bold="True"></asp:TextBox>
    &nbsp;<asp:Label ID="Label4" runat="server" Text="%" Font-Bold="True" 
        Font-Size="Small"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td class="style1">
    <asp:Button ID="Button1" runat="server" Text="Send" Font-Bold="True" 
        Font-Names="Times New Roman" onclick="Button1_Click" Width="47px" ValidationGroup="task" />
</td>
<td>
    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
        Font-Names="Times New Roman" />
</td>
</tr>
</table>
</fieldset>
</asp:Content>


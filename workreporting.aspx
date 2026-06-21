<%@ Page Language="C#" MasterPageFile="~/developer.master" AutoEventWireup="true" CodeFile="workreporting.aspx.cs" Inherits="workreporting" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="font-size: small; font-weight: bold; font-family: 'times New Roman', Times, serif; width: 342px; height: 162px;">
<legend>
Work Report
</legend>
<table style="width: 324px; height: 139px;">
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
</td>
<td>
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Work Assigned"></asp:Label>
</td>
<td>
    <asp:Label ID="workassigned" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Work Status"></asp:Label>
</td>
<td>
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton1_CheckedChanged" />
</td>
<td>
    <asp:RadioButton ID="RadioButton2" runat="server" Text="Not Completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton2_CheckedChanged" />
</td>
</tr>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="Report Work" Font-Bold="True" 
        Font-Names="Times New Roman" onclick="Button1_Click" />
</td>
<td>
    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
        Font-Names="Times New Roman" onclick="Button2_Click" />
</td>
<td>
    <asp:Label ID="Label4" runat="server" Text="WORK REPORTED" ForeColor="#CC0000" 
        Visible="False"></asp:Label>
</td>
</tr>
</table>
</fieldset>
</asp:Content>


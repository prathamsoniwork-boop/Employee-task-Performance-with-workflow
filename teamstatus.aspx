<%@ Page Language="C#" MasterPageFile="~/team.master" AutoEventWireup="true" CodeFile="teamstatus.aspx.cs" Inherits="teamstatus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 102px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="font-size: small; font-weight: bold; width: 256px; height: 327px;">
<legend>
Status View
</legend>
<table style="width: 243px; height: 27px;">
<tr>
<td class="style1">
    <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
</td>
<td>
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
</td>
</tr>
</table>
<br />
<br />
<table>
<tr>
<td style="color: #244A4A">
PROJECT STATUS 
</td>
</tr>
</table>
<br />
<table style="width: 216px; height: 211px">
<tr>
<td class="style1">
    <asp:Label ID="Label2" runat="server" Text="Field Work"></asp:Label>
</td>
<td>
    <asp:Label ID="fw" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label4" runat="server" Text="Analysis"></asp:Label>
</td>
<td>
    <asp:Label ID="anal" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label6" runat="server" Text="Design"></asp:Label>
</td>
<td>
    <asp:Label ID="des" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label8" runat="server" Text="Coding"></asp:Label>
</td>
<td>
    <asp:Label ID="code" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label10" runat="server" Text="Testing"></asp:Label>
</td>
<td>
    <asp:Label ID="test" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label12" runat="server" Text="Implementation"></asp:Label>
</td>
<td>
    <asp:Label ID="imple" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label14" runat="server" Text="Maintenance"></asp:Label>
</td>
<td>
    <asp:Label ID="maint" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label16" runat="server" Text="Completion %" ForeColor="Maroon"></asp:Label>
</td>
<td>
    <asp:Label ID="per" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    <asp:Label ID="Label3" runat="server" Text="%" ForeColor="Red"></asp:Label>
</td>
</tr>
</table>
</fieldset>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/team.master" AutoEventWireup="true" CodeFile="emptyteam.aspx.cs" Inherits="emptyteam" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 81px;
        }
        .style2
        {
            width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="WELCOME" Width="105px" 
        Font-Bold="True" Font-Size="Small"></asp:Label>

</td>
<td>
    <asp:Label ID="name" runat="server" Text="Label" Font-Bold="True" 
        Font-Size="Small" ForeColor="#FF3300"></asp:Label>
</td>
</tr>
</table>
<table>
<tr>
<td>
<fieldset style="height: 140px; width: 214px; font-family: 'times New Roman', Times, serif; font-size: small; font-weight: bold;">
<legend>
Login Details
</legend>
<table style="width: 196px; height: 114px">
<tr>
<td class="style1">
    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
</td>
<td>
    <asp:Label ID="username" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
</td>
<td>
    <asp:Label ID="password" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label3" runat="server" Text="Designation"></asp:Label>
</td>
<td>
    <asp:Label ID="designation" runat="server" Text="Label"></asp:Label>
</td>
</tr>
</table>
</fieldset>
</td>
<td>
<fieldset style="height: 140px; width: 264px; font-family: 'times New Roman', Times, serif; font-size: small; font-weight: bold;">
<legend>
Project Details
</legend>
<table style="width: 252px; height: 114px">
<tr>
<td class="style2">
    <asp:Label ID="Label5" runat="server" Text="Project Name"></asp:Label>
</td>
<td>
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style2">
    <asp:Label ID="Label7" runat="server" Text="No Of Modules"></asp:Label>
</td>
<td>
    <asp:Label ID="modules" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style2">
    <asp:Label ID="Label8" runat="server" Text="End Date"></asp:Label>
</td>
<td>
    <asp:Label ID="enddate" runat="server" Text="Label"></asp:Label>
</td>
</tr>
</table>
</fieldset>
</td>
</tr>
</table>
</asp:Content>


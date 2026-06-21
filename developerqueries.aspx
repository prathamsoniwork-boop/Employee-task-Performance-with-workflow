<%@ Page Language="C#" MasterPageFile="~/developer.master" AutoEventWireup="true" CodeFile="developerqueries.aspx.cs" Inherits="developerqueries" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="font-size: small; font-weight: bold; width: 349px; height: 290px;">
<legend>
Developer Queries
</legend>
<table style="height: 239px; width: 326px">
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
    
</td>
<td>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</td>

</tr>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Project Name"></asp:Label>
</td>
<td>
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label6" runat="server" Text="Employee Role"></asp:Label>
</td>
<td>
    <asp:Label ID="workassigned" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label5" runat="server" Text="Queries"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Height="76px" TextMode="MultiLine" 
        Width="188px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="Send request" 
        onclick="Button1_Click" ValidationGroup="task" />
</td>
<td>
    <asp:Button ID="Button2" runat="server" Text="Cancel" />
</td>
</tr>
</table>
</fieldset>
</asp:Content>


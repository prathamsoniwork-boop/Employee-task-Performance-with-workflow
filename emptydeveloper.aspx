<%@ Page Language="C#" MasterPageFile="~/developer.master" AutoEventWireup="true" CodeFile="emptydeveloper.aspx.cs" Inherits="emptydeveloper" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 230px; font-size: small; font-weight: bold; font-family: 'times New Roman', Times, serif; height: 96px;">
<tr>
<td class="style1">
    <asp:Label ID="Label1" runat="server" Text="WELCOME"></asp:Label>
</td>
<td>
    <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
</td>
</tr>
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
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
</td>
<td>
    <asp:Label ID="password" runat="server" Text="Label"></asp:Label>
</td>
</tr>
</table>
</asp:Content>


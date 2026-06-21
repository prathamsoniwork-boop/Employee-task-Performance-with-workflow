<%@ Page Language="C#" MasterPageFile="~/projects.master" AutoEventWireup="true" CodeFile="checkprojstatus.aspx.cs" Inherits="checkprojstatus" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<fieldset>
<legend style="font-weight: bold; color: maroon">
CHECK STATUS
</legend>
<table>
<tr>
<td>
    <asp:Label ID="status" runat="server" Text="SELECT PROJECT" Width="150px" Font-Bold="True" Font-Italic="False" Font-Names="Cambria"></asp:Label>
    <asp:DropDownList ID="dropstatus" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="dropstatus_TextChanged">
    </asp:DropDownList>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="stsfield" runat="server" Text="FIELDWORK" Width="150px" Font-Bold="True" Font-Italic="False" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="comfield" runat="server" BackColor="Gainsboro" Font-Bold="True" Font-Names="Cambria" ForeColor="#400000"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="stsanalysis" runat="server" Text="ANALYSIS" Width="150px" Font-Bold="True" Font-Italic="False" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="comanalysis" runat="server" BackColor="Gainsboro" Font-Bold="True" Font-Names="Cambria" ForeColor="#400000"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="stsdesign" runat="server" Text="DESIGN" Width="150px" Font-Bold="True" Font-Italic="False" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="comdesign" runat="server" BackColor="Gainsboro" Font-Bold="True" Font-Names="Cambria" ForeColor="#400000"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="stscode" runat="server" Text="CODE" Width="150px" Font-Bold="True" Font-Italic="False" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="comcode" runat="server" BackColor="Gainsboro" Font-Bold="True" Font-Names="Cambria" ForeColor="#400000"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="ststest" runat="server" Text="TESTING" Width="150px" Font-Bold="True" Font-Italic="False" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="comtest" runat="server" BackColor="Gainsboro" Font-Bold="True" Font-Names="Cambria" ForeColor="#400000" ></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="stsimplement" runat="server" Text="IMPLEMENTATION" Width="150px" Font-Bold="True" Font-Italic="False" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="comimplement" runat="server" BackColor="Gainsboro" Font-Bold="True" Font-Names="Cambria" ForeColor="#400000" ></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="stsmaintain" runat="server" Text="MAINTENANCE" Width="150px" Font-Bold="True" Font-Italic="False" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="commaintain" runat="server" BackColor="Gainsboro" Font-Bold="True" Font-Names="Cambria" ForeColor="#400000" ></asp:Label>
</td>
</tr>
<tr>
<td align="center">
    <asp:Button ID="bac" runat="server" Text="BACK" OnClick="bac_Click" Font-Bold="True" Font-Italic="False" Font-Names="Cambria" ForeColor="#0000C0" Width="69px" />
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
</td>
</tr>
</table>
</fieldset>
</asp:Content>


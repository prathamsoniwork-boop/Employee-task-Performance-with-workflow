<%@ Page Language="C#" MasterPageFile="~/projects.master" AutoEventWireup="true" CodeFile="workstatus.aspx.cs" Inherits="workstatus" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="width: 491px">
<legend style="font-weight: bold; color: maroon">
WORK STATUS
</legend>
<table style="width: 464px">
<tr>
<td style="width: 295px">
    <asp:Label ID="lblprojname" runat="server" Text="PROJECT NAME" Width="135px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:DropDownList ID="dropproj" runat="server" Font-Bold="True" 
        AutoPostBack="True" OnTextChanged="dropproj_TextChanged" 
        onselectedindexchanged="dropproj_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" Text="View" />
</td>
</tr>
<tr>
<td style="width: 295px">
    <asp:Label ID="lblempname" runat="server" Text="EMPLOYEE NAME" Width="135px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txtprojname" runat="server" Font-Bold="True" Enabled="False" Width="128px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtprojname" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td style="width: 295px">
    <asp:Label ID="lblstatus" runat="server" Text="WORK STATUS" Width="135px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txtstatus" runat="server" Width="19px" Font-Bold="True" Enabled="False"></asp:TextBox>
    <asp:Label ID="lblper" runat="server" Text="% Completed" Font-Bold="True"></asp:Label>
   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtstatus" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td>
    <asp:Button ID="Button2" runat="server" Text="Finalize the project" 
        Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" OnClick="Button2_Click" 
        Visible="False" Width="176px" />
    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="Assign Work again" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" OnClick="Button1_Click" Visible="False" />
     <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
</td>
</tr>
</table>
</fieldset>
</asp:Content>


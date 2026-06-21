<%@ Page Language="C#" MasterPageFile="~/team.master" AutoEventWireup="true" CodeFile="phaseupdate.aspx.cs" Inherits="phaseupdate" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <fieldset style="font-size: small; font-weight: bold; font-family: 'times New Roman', Times, serif; width: 695px;">
<legend>
Phase Update
</legend>
<table>
<tr>
<td>

<table style="width: 215px; height: 159px;">
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
    <asp:Label ID="Label2" runat="server" Text="Start Date"></asp:Label>
</td>
<td>
    <asp:Label ID="startdate" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label3" runat="server" Text="End Date"></asp:Label>
</td>
<td>
    <asp:Label ID="enddate" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Label4" runat="server" Text="Grace Date"></asp:Label>
</td>
<td>
    <asp:Label ID="gracedate" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label5" runat="server" Text="Team Leader"></asp:Label>
</td>
<td>
    <asp:Label ID="teamleader" runat="server" Text="Label"></asp:Label>
</td>
</tr>
</table>
</td>
<td>
<fieldset style="width: 421px">
<legend>
Project Phases
</legend>

<table style="width: 387px">
<tr>
<td>
    <asp:Label ID="Label7" runat="server" Text="Field Work"></asp:Label>
</td>
<td>
    <asp:RadioButton ID="RadioButton1" runat="server" Text="completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton1_CheckedChanged" />
</td>
<td>
    <asp:RadioButton ID="RadioButton2" runat="server" Text="not completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton2_CheckedChanged" />
</td>
<td class="style2">
    <asp:Label ID="fw" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label9" runat="server" Text="%"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label10" runat="server" Text="Analysis"></asp:Label>
</td>
<td>
    <asp:RadioButton ID="RadioButton3" runat="server" Text="completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton3_CheckedChanged" />
</td>
<td>
    <asp:RadioButton ID="RadioButton4" runat="server" Text="not completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton4_CheckedChanged" />
</td>
<td class="style2">
    <asp:Label ID="ana" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label12" runat="server" Text="%"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label13" runat="server" Text="Design"></asp:Label>
</td>
<td>
    <asp:RadioButton ID="RadioButton5" runat="server" Text="completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton5_CheckedChanged" />
</td>
<td>
    <asp:RadioButton ID="RadioButton6" runat="server" Text="not completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton6_CheckedChanged" />
</td>
<td class="style2">
    <asp:Label ID="dn" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label15" runat="server" Text="%"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label16" runat="server" Text="Coding"></asp:Label>
</td>
<td>
    <asp:RadioButton ID="RadioButton7" runat="server" Text="completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton7_CheckedChanged" />
</td>
<td>
    <asp:RadioButton ID="RadioButton8" runat="server" Text="not completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton8_CheckedChanged" />
</td>
<td class="style2">
    <asp:Label ID="cd" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label18" runat="server" Text="%"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label19" runat="server" Text="Testing"></asp:Label>
</td>
<td>
    <asp:RadioButton ID="RadioButton9" runat="server" Text="completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton9_CheckedChanged" />
</td>
<td>
    <asp:RadioButton ID="RadioButton10" runat="server" Text="not completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton10_CheckedChanged" />
</td>
<td class="style2">
    <asp:Label ID="tes" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label21" runat="server" Text="%"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label22" runat="server" Text="Implementation"></asp:Label>
</td>
<td>
    <asp:RadioButton ID="RadioButton11" runat="server" Text="completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton11_CheckedChanged" />
</td>
<td>
    <asp:RadioButton ID="RadioButton12" runat="server" Text="not completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton12_CheckedChanged" />
</td>
<td class="style2">
    <asp:Label ID="impt" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label24" runat="server" Text="%"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label25" runat="server" Text="Maintenance"></asp:Label>
</td>
<td>
    <asp:RadioButton ID="RadioButton13" runat="server" Text="completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton13_CheckedChanged" />
</td>
<td>
    <asp:RadioButton ID="RadioButton14" runat="server" Text="not completed" 
        AutoPostBack="True" oncheckedchanged="RadioButton14_CheckedChanged" />
</td>
<td class="style2">
    <asp:Label ID="mtn" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label27" runat="server" Text="%"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Button ID="btnupdate" runat="server" Text="Update" Font-Bold="True" 
        Font-Names="Times New Roman" Visible="False" onclick="btnupdate_Click" />
</td>
<td>
    <asp:Button ID="btnsave" runat="server" Text="Save" Font-Bold="True" 
        Font-Names="Times New Roman" Visible="False" onclick="btnsave_Click" />
</td>
<td>
    <asp:Button ID="btncancel" runat="server" Text="Cancel" Font-Bold="True" 
        Font-Names="Times New Roman" onclick="btncancel_Click" />
        <asp:Button ID="Button4" runat="server" Text="Total" Font-Bold="True" 
        Font-Names="Times New Roman" Width="48px" onclick="Button4_Click" />
</td>
<td class="style2">
    <asp:Label ID="tota" runat="server" Text="0"></asp:Label> 
    <asp:Label ID="Label8" runat="server" Text="%"></asp:Label>
    <asp:Label ID="chk" runat="server" Text="1" Visible="False"></asp:Label>
</td>
</tr>
</table>
</fieldset>
</td>

</tr>
</table>
<table style="width: 677px; height: 248px">
<tr>
<td>
    <asp:Label ID="Label6" runat="server" Text="Team Members Details" 
        Font-Size="Small" ForeColor="#6600CC"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" 
        Width="656px">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="mem1" HeaderText="M1" SortExpression="mem1" />
            <asp:BoundField DataField="work1" HeaderText="Position" 
                SortExpression="work1" />
            <asp:BoundField DataField="mem2" HeaderText="M2" SortExpression="mem2" />
            <asp:BoundField DataField="work2" HeaderText="M2 Work" SortExpression="work2" />
            <asp:BoundField DataField="mem3" HeaderText="M3" SortExpression="mem3" />
            <asp:BoundField DataField="work3" HeaderText="M3 Work" SortExpression="work3" />
            <asp:BoundField DataField="mem4" HeaderText="M4" SortExpression="mem4" />
            <asp:BoundField DataField="work4" HeaderText="M4 Work" SortExpression="work4" />
            <asp:BoundField DataField="mem5" HeaderText="M5" SortExpression="mem5" />
            <asp:BoundField DataField="work5" HeaderText="M5 Work" SortExpression="work5" />
            <asp:BoundField DataField="modules" HeaderText="Modules" 
                SortExpression="modules" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT [mem1], [work1], [mem2], [work2], [mem3], [work3], [mem4], [work4], [mem5], [work5], [modules] FROM [chooseemp] WHERE (([projname] = @projname) AND ([mem1] = @mem1))">
        <SelectParameters>
            <asp:ControlParameter ControlID="projectname" Name="projname" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="teamleader" Name="mem1" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</td>
</tr>
</table>
</fieldset>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            width: 97px;
        }
        .style2
        {
            width: 65px;
        }
    </style>

</asp:Content>



<%@ Page Language="C#" MasterPageFile="~/team.master" AutoEventWireup="true" CodeFile="projqueriview.aspx.cs" Inherits="projqueriview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="font-size: small; font-weight: bold; height: 407px; width: 540px;">
<legend>
Project Queries
</legend>
<table>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
</td>
<td>
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
</td>
</tr>
</table>
<table style="width: 521px; height: 303px;">
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" Width="500px" DataKeyNames="id" onrowdeleting="GridView1_RowDeleting" 
        >
        <RowStyle BackColor="White" ForeColor="#330099" />
        <Columns>
            <asp:BoundField DataField="date" HeaderText="Sent Date" SortExpression="date" />
            <asp:BoundField DataField="sender" HeaderText="From" SortExpression="sender" />
            <asp:BoundField DataField="srole" HeaderText="Emp Role" 
                SortExpression="srole" />
            <asp:BoundField DataField="queries" HeaderText="Queries" 
                SortExpression="queries">
                <ControlStyle Width="300px" />
                <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        
        SelectCommand="SELECT [date], [sender], [srole], [queries], [id] FROM [query] WHERE ([projname] = @projname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="projectname" Name="projname" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</td>
</tr>
</table>
</fieldset>
</asp:Content>


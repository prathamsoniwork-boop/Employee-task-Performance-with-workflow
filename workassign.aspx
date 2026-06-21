<%@ Page Language="C#" MasterPageFile="~/projects.master" AutoEventWireup="true" CodeFile="workassign.aspx.cs" Inherits="workassign" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<fieldset>
<legend>
Work Assign
</legend>
<table style="width: 650px">
<tr>
<td style="width:789px">
</td>
</tr>
<tr>
<td align="center" style="width: 650px" >
    <asp:Button ID="Button1" runat="server" Text="Work Assigned" OnClick="Button1_Click" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="Blue" />
    <asp:Button ID="Button2" runat="server" Text="Without Work" OnClick="Button2_Click" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="Blue" />
</td>
</tr>
</table>
<table>
<tr>
<td></td>
</tr>
<tr>
<td style="width: 325px" >
   <%-- <asp:GridView ID="withwork" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" Font-Bold="True" Font-Italic="True" Font-Names="Bookman Old Style" Font-Size="Smaller" ForeColor="Maroon">
        <Columns>
            <asp:BoundField DataField="empnamep" HeaderText="Employee Name" SortExpression="empnamep" />
            <asp:BoundField DataField="projname" HeaderText="Project Name" SortExpression="projname" />
            <asp:BoundField DataField="projlang" HeaderText="Project Lang" SortExpression="projlang" />
        </Columns>
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="Maroon" BorderColor="Navy" BorderStyle="Solid" Font-Bold="True"
            Font-Names="Bookman Old Style" ForeColor="Maroon" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Maroon" BorderColor="Navy" BorderStyle="Groove" Font-Bold="True"
            ForeColor="Gold" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [empnamep], [projname], [projlang] FROM [createproject] WHERE ([compname] = @compname)">
        <SelectParameters>
            <asp:SessionParameter Name="compname" SessionField="aaa" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>

     <asp:GridView ID="withwork" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" Font-Bold="True" Font-Italic="True" Font-Names="Bookman Old Style" Font-Size="Smaller" ForeColor="Maroon">
            <Columns>
                <asp:BoundField DataField="empname" HeaderText="Employee Name" SortExpression="empname" />
                <asp:BoundField DataField="empdep" HeaderText="Employee Dep" SortExpression="empdep" />
                <asp:BoundField DataField="empquali" HeaderText="Qualification" SortExpression="empquali" />
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="Maroon" BorderColor="Navy" BorderStyle="Solid" Font-Bold="True"
            Font-Names="Bookman Old Style" ForeColor="Maroon" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Maroon" BorderColor="Navy" BorderStyle="Groove" Font-Bold="True"
            ForeColor="Gold" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
            SelectCommand="SELECT [empname], [empdep], [empquali] FROM [empcreate] WHERE ([compname] = @compname) and status='yes'">
            <SelectParameters>
                <asp:SessionParameter Name="compname" SessionField="aaa" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </td>
    <td>
        <asp:GridView ID="withoutwork" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Visible="False" Font-Bold="True" Font-Italic="True" Font-Names="Bookman Old Style" Font-Size="Smaller" ForeColor="Maroon">
            <Columns>
                <asp:BoundField DataField="empname" HeaderText="Employee Name" SortExpression="empname" />
                <asp:BoundField DataField="empdep" HeaderText="Employee Dep" SortExpression="empdep" />
                <asp:BoundField DataField="empquali" HeaderText="Qualification" SortExpression="empquali" />
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <FooterStyle BackColor="Maroon" BorderColor="Navy" BorderStyle="Solid" Font-Bold="True"
            Font-Names="Bookman Old Style" ForeColor="Maroon" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Maroon" BorderColor="Navy" BorderStyle="Groove" Font-Bold="True"
            ForeColor="Gold" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
            SelectCommand="SELECT [empname], [empdep], [empquali] FROM [empcreate] WHERE ([compname] = @compname) and status='no'">
            <SelectParameters>
                <asp:SessionParameter Name="compname" SessionField="aaa" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </td>
</tr>
<tr>
<td align="right">
    <asp:Button ID="Button3" runat="server" Text="Back" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="Blue" OnClick="Button3_Click" Width="61px" />
</td>
</tr>
</table>
</fieldset>
</asp:Content>


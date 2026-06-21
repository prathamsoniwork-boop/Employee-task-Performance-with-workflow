<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Viewtaskpoints.aspx.cs" Inherits="Viewtaskpoints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
        <tr>
            <td>
                Employee Task Points
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="867px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="projname" HeaderText="Project Name" SortExpression="projname" />
                        <asp:BoundField DataField="memname" HeaderText="Member Name" SortExpression="memname" />
                        <asp:BoundField DataField="pdesignation" HeaderText="Assigned Work in project" SortExpression="pdesignation" />
                        <asp:BoundField DataField="undertl" HeaderText="Under Team Leader" SortExpression="undertl" />
                        <asp:BoundField DataField="emppoints" HeaderText="Employee Points" SortExpression="emppoints">
                        <ControlStyle BackColor="#CCCCCC" />
                        <ItemStyle BackColor="#FFCCFF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sdate" HeaderText="Rated Date" SortExpression="sdate" />
                        <asp:BoundField DataField="stime" HeaderText="Rated Time" SortExpression="stime" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [projname], [memname], [undertl], [emppoints], [sdate], [stime], [pdesignation] FROM [emppoints]"></asp:SqlDataSource>
            </td>
          
        </tr>
        <tr>
            <td>
 Consoldated Employee Points:<br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4">
                        <Columns>
                            <asp:BoundField DataField="empname" HeaderText="Employee Name" SortExpression="empname" />
                            <asp:BoundField DataField="cpoints" HeaderText="Consoldated Points" SortExpression="cpoints" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [consolpoints]"></asp:SqlDataSource>
                </td>
        </tr>
    </table>
</asp:Content>


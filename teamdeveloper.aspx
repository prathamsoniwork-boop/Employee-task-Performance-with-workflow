<%@ Page Language="C#" MasterPageFile="~/team.master" AutoEventWireup="true" CodeFile="teamdeveloper.aspx.cs" Inherits="teamdeveloper" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="font-size: small; font-weight: bold; width: 388px; ">
<legend>
Team Members Report
</legend>
<table style="width: 324px">
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
    &nbsp;
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
    <br />
</td>
</tr>
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" 
        GridLines="None" Width="363px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="memname" HeaderText="Team member" 
                SortExpression="memname" />
            <asp:BoundField DataField="memwork" HeaderText="Work Assigned" 
                SortExpression="memwork" />
            <asp:BoundField DataField="status" HeaderText="Work Status" 
                SortExpression="status" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT [memname], [memwork], [status] FROM [developerreport] WHERE ([projname] = @projname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="projectname" Name="projname" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</td>
</tr>
</table>
</fieldset>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <table style="height: 203px; width: 278px">
            <tr>
                <td bgcolor="#CCCCCC" style="color: #FF3300">
                    EMPLOYEE TASK POINTS:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Project Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblprojname" runat="server" Text="........."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Member Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblmembername" runat="server" Text="........."></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Assigned Work"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblassignedwork" runat="server" Text="........."></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Employee Points"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemppoints" runat="server" Width="55px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemppoints" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add Points" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="task" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
                </td>
            </tr>
        </table>
         </asp:Panel>
        <table>
            <tr>
                <td valign="top">
                    Projectwise Employee Points:
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" Width="421px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="projname" HeaderText="Project Name" SortExpression="projname" />
                            <asp:BoundField DataField="memname" HeaderText="Employee Name" SortExpression="memname" />
                            <asp:BoundField DataField="pdesignation" HeaderText="Assigned Work in Proj" SortExpression="pdesignation" />
                            <asp:BoundField DataField="emppoints" HeaderText="Employee Points" SortExpression="emppoints" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [projname], [memname], [undertl], [emppoints], [sdate], [stime], [pdesignation] FROM [emppoints] WHERE ([undertl] = @undertl)">
                        <SelectParameters>
                            <asp:SessionParameter Name="undertl" SessionField="team" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
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
                <td valign="top">
                    <asp:Chart ID="Chart1" runat="server" BackColor="DarkGray" DataSourceID="SqlDataSource3">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="memname" YValueMembers="emppoints"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY Title="Employee Points">
                                </AxisY>
                                <AxisX Interval="1" Title="Membername">
                                </AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [memname], [emppoints], [projname] FROM [emppoints]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
   
</asp:Content>


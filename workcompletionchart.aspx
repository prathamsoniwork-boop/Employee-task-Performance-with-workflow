<%@ Page Language="C#" MasterPageFile="~/team.master" AutoEventWireup="true" CodeFile="workcompletionchart.aspx.cs" Inherits="workcompletionchart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 127px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="height: 356px; width: 357px; font-size: small; font-weight: bold;">
<legend>
Team members Work Completion Chart
</legend>
<table style="width: 333px; height: 35px;">
<tr>
<td class="style1">
    <asp:Label ID="Label1" runat="server" Text="Project Name"></asp:Label>
</td>
<td>
    <asp:Label ID="projectname" runat="server" Text="Label"></asp:Label>
</td>
</tr>
</table>
<table>
<tr>
<td>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
        BackColor="DeepSkyBlue" Palette="Chocolate">
        <Series>
            <asp:Series Name="Series1" XValueMember="memname" YValueMembers="comple">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisY Title="Work Completion %">
                </AxisY>
                <AxisX Title="Project Members">
                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT [memname], [comple] FROM [developerreport] WHERE ([projname] = @projname)">
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


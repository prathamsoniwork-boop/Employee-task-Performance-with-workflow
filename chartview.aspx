<%@ Page Language="C#" MasterPageFile="~/projects.master" AutoEventWireup="true" CodeFile="chartview.aspx.cs" Inherits="chartview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td>
 <asp:Chart ID="Chart1" runat="server" BackColor="DarkGreen" 
            BackGradientStyle="VerticalCenter" BackImageTransparentColor="255, 192, 192" 
            BackSecondaryColor="224, 224, 224" BorderlineDashStyle="Dash" 
            DataSourceID="SqlDataSource2" Height="400px" Palette="Bright" 
        Width="256px">
            <BorderSkin BackGradientStyle="LeftRight" BorderColor="Maroon" PageColor="" />
            <Series>
                <asp:Series Name="Series1" XValueMember="projectname" YValueMembers="per">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisY Title="Percentage">
                    </AxisY>
                    <AxisX Title="Project Name">
                    </AxisX>
                    <Area3DStyle IsClustered="True" WallWidth="10" />
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT [projectname], [per] FROM [projschedule] WHERE ([compname] = @compname)">
            <SelectParameters>
                <asp:SessionParameter Name="compname" SessionField="aaa" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
</td>
</tr>
</table>
</asp:Content>


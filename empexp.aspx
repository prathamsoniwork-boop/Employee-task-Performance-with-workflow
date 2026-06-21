<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="empexp.aspx.cs" Inherits="empexp" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
<tr>
<td>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
        BackColor="Salmon" BackGradientStyle="LeftRight" Palette="SemiTransparent">
        <Series>
            <asp:Series Name="Series1" XValueMember="empname" YValueMembers="empyr">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisY Title="Year Of Exp" TitleForeColor="Maroon">
                </AxisY>
                <AxisX Title="Employee Name" TextOrientation="Horizontal" 
                    TitleForeColor="Maroon">
                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT [empname], [empyr] FROM [empcreate] WHERE ([compname] = @compname)">
        <SelectParameters>
            <asp:SessionParameter Name="compname" SessionField="aaa" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</td>
</tr>
</table>
</asp:Content>


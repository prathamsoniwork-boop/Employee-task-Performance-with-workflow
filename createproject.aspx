<%@ Page Language="C#" MasterPageFile="~/projects.master" AutoEventWireup="true" CodeFile="createproject.aspx.cs" Inherits="createproject" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="width: 702px">
<legend style="font-weight: bold; color: maroon">
CREATE PROJECT
</legend>
<table style="width: 689px">
<tr>
<td>

<table>
<tr>
<td>
    <asp:Label ID="lblprojlang" runat="server" Text="FRONT END" Width="200px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:DropDownList ID="droplanguage" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" ForeColor="Maroon" Width="148px">
        <asp:ListItem>C</asp:ListItem>
        <asp:ListItem>C++</asp:ListItem>
        <asp:ListItem>JAVA</asp:ListItem>
        <asp:ListItem>ASP.NET</asp:ListItem>
        <asp:ListItem>VB.NET</asp:ListItem>
        <asp:ListItem>JSP</asp:ListItem>
        <asp:ListItem>PHP</asp:ListItem>
        <asp:ListItem>ANDROID</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
    <td>
     <asp:Label ID="Label16" runat="server" Text="CODING LANGUAGE" Width="200px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    
        <asp:DropDownList ID="dropcode" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" ForeColor="Maroon" Width="148px">
            <asp:ListItem>ECLIPSE</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>VC++</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>F#</asp:ListItem>
            <asp:ListItem>VB</asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr>
    <td>
     <asp:Label ID="Label17" runat="server" Text="BACK END" Width="200px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    
        <asp:DropDownList ID="dropbackend" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" ForeColor="Maroon" Width="148px">
            <asp:ListItem>SQL SERVER</asp:ListItem>
            <asp:ListItem>ACCESS</asp:ListItem>
            <asp:ListItem>ORACLE</asp:ListItem>
            <asp:ListItem>SQLITE</asp:ListItem>
            <asp:ListItem>PLSQL</asp:ListItem>
            <asp:ListItem>SQLR2</asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr>
    <td>
     <asp:Label ID="Label18" runat="server" Text="SCRIPTING TOOL" Width="200px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    
        <asp:DropDownList ID="dropscripttool" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" ForeColor="Maroon" Width="148px">
            <asp:ListItem>JAVASCRIPT</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
            <asp:ListItem>HTML SCRIPT</asp:ListItem>
            <asp:ListItem>XML</asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr>
    <td>
     <asp:Label ID="Label19" runat="server" Text="CLIENT SERVER TOOL" Width="200px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    
        <asp:DropDownList ID="dropclientserver" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" ForeColor="Maroon">
            <asp:ListItem>AJAX</asp:ListItem>
            <asp:ListItem>TOMCAT SERVER</asp:ListItem>
            <asp:ListItem>APACHE</asp:ListItem>
            <asp:ListItem>WORD PRESS</asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr>
<td>
    <asp:Label ID="Label14" runat="server" Text="SELECT TEAM LEADER" width="200px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:DropDownList ID="dropempname" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" ForeColor="Maroon" Width="148px" >
    </asp:DropDownList>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblstartdate" runat="server" Text="START DATE" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
     <asp:TextBox ID="txtdate" runat="server" Enabled="False"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblenddate" runat="server" Text="END DATE" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <input id="txtedate" type="text" runat="server" name="todays_date" onfocus="showCalendarControl(this);" readonly="readonly" />
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtedate" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="GRACE DATE" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <input id="txtsdate" type="text" runat="server" name="todays_date" onfocus="showCalendarControl(this);" readonly="readonly"  />
   
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsdate" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblnameproj" runat="server" Text="PROJECT NAME" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txtnameproj" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtnameproj" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td>
 <asp:Label ID="Label3" runat="server" Text="PROJECT DOMAIN" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
      <asp:DropDownList ID="dropprojdomain" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" ForeColor="Maroon" Width="210px" >
          <asp:ListItem>Window Application</asp:ListItem>
          <asp:ListItem>Web Application</asp:ListItem>
          <asp:ListItem>Wireless Application</asp:ListItem>
          <asp:ListItem>Website</asp:ListItem>
          <asp:ListItem>Data Engineering</asp:ListItem>
          <asp:ListItem>Network Security</asp:ListItem>
          <asp:ListItem>Protocol Based Application</asp:ListItem>
          <asp:ListItem>Server Client Operation</asp:ListItem>
          <asp:ListItem>LAN Connectivity</asp:ListItem>
          <asp:ListItem>Automation</asp:ListItem>
          <asp:ListItem>Animation</asp:ListItem>
          <asp:ListItem>Customization</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td align="center">
    
    
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
</td>
</tr>
</table>
</td>
<td align="center">
    <asp:Label ID="Label15" runat="server" Text="Without Work" Font-Bold="True" 
        Font-Names="Cambria" ForeColor="#660066"></asp:Label>
     <asp:GridView ID="withoutwork" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Font-Bold="True" Font-Italic="True" 
        Font-Names="Bookman Old Style" Font-Size="Smaller" ForeColor="Maroon" 
        Height="112px" Width="207px" PageSize="5" AllowPaging="True">
            
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="empname" HeaderText="empname" 
                    SortExpression="empname" />
                <asp:BoundField DataField="empwork" HeaderText="empwork" 
                    SortExpression="empwork">
                    <ControlStyle Width="200px" />
                </asp:BoundField>
            </Columns>
        <FooterStyle BackColor="Maroon" BorderColor="Navy" BorderStyle="Solid" Font-Bold="True"
            Font-Names="Bookman Old Style" ForeColor="Maroon" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Maroon" BorderColor="Navy" BorderStyle="Groove" Font-Bold="True"
            ForeColor="Gold" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT empname, empwork FROM empcreate WHERE (compname = @compname) AND (status = 'no')">
        <SelectParameters>
            <asp:SessionParameter Name="compname" SessionField="aaa" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    Consoldated Employee Points
    <br />
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
</fieldset>
<br />
    
    <asp:Panel ID="Panel1" runat="server" BorderColor="#9933FF" BorderStyle="Solid" 
        BorderWidth="1px" Width="802px">
        <table style="width: 802px">
        <tr>
        <td>
        
        <table style="width: 394px">
    <tr>
    <td>
        <asp:Label ID="Label4" runat="server" Text="MODULE DESCRIPTION" 
            Font-Bold="True" ForeColor="Maroon"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label5" runat="server" Text="PROJECT WEIGHTAGE" Width="200px" 
            Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtprojectweight" runat="server" Width="53px" 
            AutoPostBack="True" ontextchanged="txtprojectweight_TextChanged" 
            style="height: 22px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="%" Font-Bold="True"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtprojectweight" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td>
        <asp:Label ID="Label7" runat="server" Text="REUSABILITY" Width="200px" 
            Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtreuse" runat="server" Width="53px" Enabled="False"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="%" Font-Bold="True"></asp:Label>
    </td>
    </tr>
     <tr>
    <td>
        <asp:Label ID="Label9" runat="server" Text="OUTSOURCE" Width="200px" 
            Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:RadioButton ID="radioyes" runat="server" Text="YES" AutoPostBack="True" 
            Font-Bold="True" Font-Names="Cambria" 
            oncheckedchanged="radioyes_CheckedChanged" />
        <asp:RadioButton ID="radiono" runat="server"  Text="NO" AutoPostBack="True" 
            Checked="True" Font-Bold="True" Font-Names="Cambria" 
            oncheckedchanged="radiono_CheckedChanged"/>
        <asp:TextBox ID="txtoutsource" runat="server" Width="53px" Visible="False"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" Text="%" Font-Bold="True" 
            Visible="False"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label11" runat="server" Text="SPLIT MODULES" Font-Bold="True" 
            ForeColor="Maroon"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label12" runat="server" Text="MODULES" Width="200px" 
            Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtmodules" runat="server" Enabled="False" Font-Bold="True" 
            ForeColor="#CC0099" Width="53px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="btncalculate" runat="server" Text="CALCULATE" Font-Bold="True" 
            Font-Names="Cambria" ForeColor="Blue" Width="91px" 
            onclick="btncalculate_Click" />
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label13" runat="server" Text="TASK" Width="200px" 
            Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txttask" runat="server" Enabled="False" Font-Bold="True" 
            ForeColor="#666633" Width="53px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
            <asp:Button ID="btnprojsave" runat="server" Text="SAVE" OnClick="btnprojsave_Click" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" ValidationGroup="task" />
        <asp:Button ID="btnprojcancel" runat="server" Text="CANCEL" OnClick="btnprojcancel_Click" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" />
    </td>
    </tr>
    <tr>
    <td>
        &nbsp;</td>
    </tr>
    </table>
        </td>
        <td valign="top">
            <table style="width: 305px; height: 175px">
            <tr>
            <td>
                <asp:Table ID="Table1" runat="server" BorderColor="#003300" BorderStyle="Ridge" 
                    BorderWidth="1px" Height="116px" Width="239px">
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell ID="TableCell1" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="#0000CC">Weightage</asp:TableCell>
                        <asp:TableCell ID="TableCell2" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="#0000CC">Modules</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small" ForeColor="#0000CC">Task
                        </asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small" ForeColor="#0000CC">Reusability</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small" ForeColor="#0000CC">Members</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell ID="TableCell3" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="#660066">0-20 %</asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Black">1</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">5</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">100 %</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell ID="TableCell5" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="#660066">20-40 %</asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Black">2</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">10</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">70 %</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">2</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server">
                        <asp:TableCell ID="TableCell7" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="#660066">40-60 %</asp:TableCell>
                        <asp:TableCell ID="TableCell8" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Black">3</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">15</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">50 %</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">3</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow5" runat="server">
                        <asp:TableCell ID="TableCell9" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="#660066">60-80 %</asp:TableCell>
                        <asp:TableCell ID="TableCell10" runat="server" BorderColor="#6699FF" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" 
                            ForeColor="Black">4</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">20</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">30 %</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">4</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small" ForeColor="#660066">80-100 
                        %</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">5</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">25</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">0 %</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#6699FF" BorderStyle="Solid" 
                            BorderWidth="1px" Font-Bold="True" Font-Size="Small">5</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </td>
            </tr>
            </table>
        </td>
        </tr>
        </table>
    </asp:Panel>

</asp:Content>


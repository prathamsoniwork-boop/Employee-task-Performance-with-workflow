<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="employeeinfo.aspx.cs" Inherits="employeeinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <fieldset style="width: 637px">
<legend>
EMPLOYEE INFO
</legend>
<table>
<tr>
<td>
    <asp:GridView ID="empinfo" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowCancelingEdit="empinfo_RowCancelingEdit" OnRowEditing="empinfo_RowEditing" OnRowUpdating="empinfo_RowUpdating" CellPadding="4" Font-Bold="True" Font-Italic="True" Font-Names="Bookman Old Style" Font-Size="Smaller" ForeColor="Maroon" OnRowDeleting="empinfo_RowDeleting" Width="621px">
        <Columns>
            <asp:TemplateField InsertVisible="False" SortExpression="id">
                <EditItemTemplate>
                    <asp:CheckBox ID="chk" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAME" SortExpression="empname">
                <EditItemTemplate>
                    <asp:TextBox ID="txtpname" runat="server" Text='<%# Bind("empname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("empname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="QUALI" SortExpression="empquali">
                <EditItemTemplate>
                    <asp:TextBox ID="txtpquali" runat="server" Text='<%# Bind("empquali") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("empquali") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="YEAR OF EXP" SortExpression="empyr">
                <EditItemTemplate>
                    <asp:TextBox ID="txtpyr" runat="server" Text='<%# Bind("empyr") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("empyr") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DOB" SortExpression="empdob">
                <EditItemTemplate>
                    <asp:TextBox ID="txtpdob" runat="server" Text='<%# Bind("empdob") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("empdob") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DEPARTMENT" SortExpression="empdep">
                <EditItemTemplate>
                    <asp:TextBox ID="txtpdep" runat="server" Text='<%# Bind("empdep") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("empdep") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="WORK" SortExpression="empwork">
                <EditItemTemplate>
                    <asp:TextBox ID="txtpwork" runat="server" Text='<%# Bind("empwork") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("empwork") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PHONE NO" SortExpression="empph">
                <EditItemTemplate>
                    <asp:TextBox ID="txtpph" runat="server" Text='<%# Bind("empph") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("empph") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EMAIL" SortExpression="empemail">
                <EditItemTemplate>
                    <asp:TextBox ID="txtpemail" runat="server" Text='<%# Bind("empemail") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("empemail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
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
        SelectCommand="SELECT [id], [empname], [empquali], [empyr], [empdob], [empdep], [empwork], [empph], [empemail] FROM [empcreate] WHERE ([compname] = @compname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="compname" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</td>
</tr>
<tr>
<td align="center">
    <asp:Button ID="btninfo" runat="server" Text="BACK" OnClick="btninfo_Click" />
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
</td>
</tr>
</table>
</fieldset>
</asp:Content>


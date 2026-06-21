<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="createemployee.aspx.cs" Inherits="createemployee" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <fieldset style="width: 890px; height: 437px;">
<legend style="font-weight: bold; color: maroon">
EMPLOYEE CREATION
</legend>
<table style="width: 877px">
<tr>
<td style="width: 416px">
    <asp:Label ID="lblename" runat="server" Text="EMP NAME" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txtename" runat="server"></asp:TextBox>
    
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtename" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
<td style="font-weight: bold; color: #800000; width: 307px;">
   LOGIN DETAILS
</td>
</tr>
<tr>
<td style="width: 416px">
    <asp:Label ID="lalequali" runat="server" Text="EMP QUALIFICATION" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txtequali" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtequali" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
</td>
<td style="width: 307px">
 <asp:Label ID="Label3" runat="server" Text="USERNAME" Width="110px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>

</td>
</tr>
<tr>
<td style="width: 416px">
    <asp:Label ID="lbleyr" runat="server" Text="YEAR OF EXPERIANCE" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txteyr" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txteyr" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
</td>
<td style="width: 307px">
<asp:Label ID="Label4" runat="server" Text="PASSWORD" Width="110px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td style="width: 416px">
    <asp:Label ID="lbledob" runat="server" Text="EMP DOB" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <input id="txtdate" runat="server" type="text" name="todays_date" onfocus="showCalendarControl(this);" readonly="readonly" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td style="width: 416px; height: 38px;">
    <asp:Label ID="lbledep" runat="server" Text="EMPLOYEE DEPARTMENT" Width="195px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>&nbsp;
    <asp:DropDownList ID="dropedep" runat="server" Font-Bold="True" 
        Font-Names="Cambria" ForeColor="Maroon" Width="153px" Height="22px" >
        <asp:ListItem>FIELD WORK DEP</asp:ListItem>
        <asp:ListItem>ANALYSIS DEP</asp:ListItem>
        <asp:ListItem>DESIGN DEP</asp:ListItem>
        <asp:ListItem>CODING DEP</asp:ListItem>
        <asp:ListItem>TESTING DEP</asp:ListItem>
        <asp:ListItem>IMPLEMENTATION DEP</asp:ListItem>
        <asp:ListItem>MAINTENANCE DEP</asp:ListItem>
    </asp:DropDownList>
    </td>
    <td>
        <asp:Button ID="btngenerate" runat="server" Text="GENERATE" Font-Bold="True" 
            Font-Names="Cambria" ForeColor="Blue" onclick="btngenerate_Click" />
    </td>
</tr>

<tr>
<td style="width: 416px;">
    <asp:Label ID="lblework" runat="server" Text="WORKING DESIGNATION" 
        Width="195px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        Font-Bold="True" Font-Names="Cambria" ForeColor="Maroon" Height="22px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="164px">
        <asp:ListItem>Mentor</asp:ListItem>
        <asp:ListItem>Co-ordinator</asp:ListItem>
        <asp:ListItem>Translator</asp:ListItem>
        <asp:ListItem>Champion</asp:ListItem>
        <asp:ListItem>Promotor</asp:ListItem>
        <asp:ListItem>Terminator</asp:ListItem>
        <asp:ListItem>Low level Programmer</asp:ListItem>
        <asp:ListItem>Trainees</asp:ListItem>
        <asp:ListItem>Support Programmers</asp:ListItem>
        <asp:ListItem>Outsourcing Agents</asp:ListItem>
        <asp:ListItem>Team Leader</asp:ListItem>
        <asp:ListItem>Project Leader</asp:ListItem>
        <asp:ListItem>Project Manager</asp:ListItem>
        <asp:ListItem>Tester</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
      <asp:Label ID="Label9" runat="server" Text="SELECTED DESIGNATION" 
        Width="195px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtdesgn" runat="server"></asp:TextBox>
   <%-- <asp:RadioButton ID="radioteamleader" runat="server" Text="Team Leader" AutoPostBack="True" 
            Font-Bold="True" Font-Names="Cambria" Checked="True" 
        oncheckedchanged="radioteamleader_CheckedChanged"/>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="radioprojleader" runat="server"  Text="Project Leader" AutoPostBack="True" 
             Font-Bold="True" Font-Names="Cambria" 
        oncheckedchanged="radioprojleader_CheckedChanged"/>
           
    <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="radiodeveloper" runat="server"  Text="Developer" AutoPostBack="True" 
             Font-Bold="True" Font-Names="Cambria" 
        oncheckedchanged="radiodeveloper_CheckedChanged"/>
             <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="radiotester" runat="server"  Text="Tester" AutoPostBack="True" 
             Font-Bold="True" Font-Names="Cambria" 
        oncheckedchanged="radiotester_CheckedChanged"/>--%>
           
</td>
<td>
    <asp:Label ID="Label5" runat="server" Text="EMPLOYEE SKILLS" Font-Bold="True" 
        ForeColor="Maroon"></asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" Text="NO OF PROJ COMPLETED" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="146px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label7" runat="server" Text="RECENT PROJ DETAILS" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Height="58px" TextMode="MultiLine" 
        Width="146px" ></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
    
</td>
</tr>
<tr>
<td style="width: 416px">
    <asp:Label ID="Label2" runat="server" Text="EMP PHOTO" Width="200px" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:FileUpload ID="userimg" runat="server" Width="214px" />
</td>
<td>
 
    <asp:Label ID="Label8" runat="server" Text="LANGUAGE WORKED" 
        Font-Bold="True" Font-Names="Cambria"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Width="146px"></asp:TextBox>
 

    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
 

</td>
</tr>
<tr>
<td style="width: 416px">
    <asp:Label ID="lblephone" runat="server" Text="PHONE NUM" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txtephone" runat="server" MaxLength="10" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtephone" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td style="width: 416px">
    <asp:Label ID="lbleemail" runat="server" Text="EMAIL ID" Width="200px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:TextBox ID="txteemail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
    ErrorMessage="Invalid" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txteemail" 
    ValidationGroup="task" Width="54px" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txteemail" ErrorMessage="*" ValidationGroup="task"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" style="width: 416px">
    <asp:Button ID="btnesave" runat="server" Text="SAVE" OnClick="btnesave_Click" 
        Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" Width="58px" 
        Visible="True" ValidationGroup="task" />
    <asp:Button ID="btnecancel" runat="server" Text="CANCEL" 
        OnClick="btnecancel_Click" Font-Bold="True" Font-Names="Cambria" 
        ForeColor="Blue" Width="81px" Visible="True" />
    <asp:Label ID="Label1" runat="server" Visible="False" ></asp:Label>
</td>
</tr>
</table>
</fieldset>
</asp:Content>


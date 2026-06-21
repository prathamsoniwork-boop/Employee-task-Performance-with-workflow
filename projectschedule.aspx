<%@ Page Language="C#" MasterPageFile="~/projects.master" AutoEventWireup="true" CodeFile="projectschedule.aspx.cs" Inherits="projectschedule" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<fieldset style="width: 424px">
<legend style="font-weight: bold; color: maroon">
PROJECT SCHEDULE
</legend>
<table style="width: 428px">
<tr>
<td style="width: 311px">
    <asp:Label ID="lblselectproj" runat="server" Text="SELECT PROJECT" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:DropDownList ID="dropproject" runat="server" OnSelectedIndexChanged="dropproject_TextChanged" AutoPostBack="True" Font-Bold="True" Font-Names="Arial Black" ForeColor="Maroon">
    </asp:DropDownList>
</td>
</tr>
<tr>
<td style="width: 311px">
</td>
</tr>
<tr>
<td style="width: 311px">
    <asp:Label ID="lblprosdate" runat="server" Text="START DATE" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="sdate" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Maroon" BackColor="LightYellow" ></asp:Label>
    <asp:Label ID="lblproedate" runat="server" Text="END DATE" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="edate" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Maroon" BackColor="LightYellow" ></asp:Label>
</td>
</tr>
<tr>
<td style="width: 311px; height: 21px;">
</td>
</tr>
<tr>
<td style="width: 311px; height: 25px">
    <asp:Label ID="lblplang" runat="server" Text="LANGUAGE" Font-Bold="True" Font-Names="Cambria"></asp:Label>
    <asp:Label ID="lbllang" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Maroon" BackColor="LightYellow"></asp:Label>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="emplo" runat="server" Visible="False" ></asp:Label>
    <asp:Label ID="pn" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
</td>
</tr>
    <tr>
<td style="background-color: background;">
</td>
    </tr>
</table>
</fieldset>
<fieldset style="width: 643px">
<legend style="font-weight: bold; color: maroon">
PHASES
</legend>
<table style="width: 613px">
 <tr>
    <td style="width: 647px">
        <asp:Label ID="lblfield" runat="server" Text="Field Work" Width="118px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:RadioButton ID="field" runat="server" Text="Yes" AutoPostBack="True" OnCheckedChanged="field_CheckedChanged" />
        <asp:RadioButton ID="fieldn" runat="server" Text="No" AutoPostBack="True" OnCheckedChanged="fieldn_CheckedChanged" Checked="True" />
        <asp:Label ID="comf" runat="server" Text="Comments" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtcf" runat="server" Enabled="False">not completed</asp:TextBox>
        <asp:TextBox ID="TextBox1" runat="server" Width="23px" Enabled="False">0</asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="%" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
        <asp:Label ID="c1" runat="server" Visible="False"></asp:Label>
    </td>
    </tr>
    <tr>
    <td style="width: 647px">
        <asp:Label ID="lblanalysis" runat="server" Text="Analysis" Width="118px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:RadioButton ID="analysis" runat="server" Text="Yes" AutoPostBack="True" OnCheckedChanged="analysis_CheckedChanged" />
        <asp:RadioButton ID="analysisn" runat="server" Text="No" AutoPostBack="True" OnCheckedChanged="analysisn_CheckedChanged" Checked="True" />
        <asp:Label ID="coma" runat="server" Text="Comments" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtca" runat="server" Enabled="False">not completed</asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Width="23px" Enabled="False">0</asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="%" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
         <asp:Label ID="c2" runat="server" Visible="False"></asp:Label>
    </td>
    </tr>
   <tr>
   <td style="width: 647px">
       <asp:Label ID="lbldesign" runat="server" Text="Design" Width="118px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
       <asp:RadioButton ID="design" runat="server" Text="Yes" AutoPostBack="True" OnCheckedChanged="design_CheckedChanged" />
       <asp:RadioButton ID="designn" runat="server" Text="No" AutoPostBack="True" OnCheckedChanged="designn_CheckedChanged" Checked="True" />
       <asp:Label ID="comd" runat="server" Text="Comments" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtcd" runat="server" Enabled="False">not completed</asp:TextBox>
       <asp:TextBox ID="TextBox3" runat="server" Width="23px" Enabled="False">0</asp:TextBox>
       <asp:Label ID="Label4" runat="server" Text="%" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
        <asp:Label ID="c3" runat="server" Visible="False"></asp:Label>
   </td>
   </tr>
   <tr>
   <td style="width: 647px">
       <asp:Label ID="lblcode" runat="server" Text="Code" Width="118px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
       <asp:RadioButton ID="code" runat="server" Text="Yes" AutoPostBack="True" OnCheckedChanged="code_CheckedChanged" />
       <asp:RadioButton ID="coden" runat="server" Text="No" AutoPostBack="True" OnCheckedChanged="coden_CheckedChanged" Checked="True" />
       <asp:Label ID="comc" runat="server" Text="Comments" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtcc" runat="server" Enabled="False">not completed</asp:TextBox>
       <asp:TextBox ID="TextBox4" runat="server" Width="23px" Enabled="False">0</asp:TextBox>
       <asp:Label ID="Label5" runat="server" Text="%" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
        <asp:Label ID="c4" runat="server" Visible="False"></asp:Label>
   </td>
   </tr>
   <tr>
   <td style="width: 647px">
       <asp:Label ID="lbltest" runat="server" Text="Testing" Width="118px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
       <asp:RadioButton ID="test" runat="server" Text="Yes" AutoPostBack="True" OnCheckedChanged="test_CheckedChanged" />
       <asp:RadioButton ID="testn" runat="server" Text="No" AutoPostBack="True" OnCheckedChanged="testn_CheckedChanged" Checked="True" />
       <asp:Label ID="comt" runat="server" Text="Comments" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtct" runat="server" Enabled="False">not completed</asp:TextBox>
       <asp:TextBox ID="TextBox5" runat="server" Width="23px" Enabled="False">0</asp:TextBox>
       <asp:Label ID="Label6" runat="server" Text="%" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
        <asp:Label ID="c5" runat="server" Visible="False"></asp:Label>
   </td>
   </tr>
   <tr>
   <td style="height: 26px; width: 647px;">
       <asp:Label ID="lblimplement" runat="server" Text="Implementation" Width="118px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
       <asp:RadioButton ID="implement" runat="server" Text="Yes" AutoPostBack="True" OnCheckedChanged="implement_CheckedChanged" />
       <asp:RadioButton ID="implementn" runat="server" Text="No" AutoPostBack="True" OnCheckedChanged="implementn_CheckedChanged" Checked="True" />
       <asp:Label ID="comi" runat="server" Text="Comments" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtci" runat="server" Enabled="False">not completed</asp:TextBox>
       <asp:TextBox ID="TextBox6" runat="server" Width="23px" Enabled="False">0</asp:TextBox>
       <asp:Label ID="Label7" runat="server" Text="%" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
        <asp:Label ID="c6" runat="server" Visible="False"></asp:Label>
   </td>
   </tr>
   <tr>
   <td style="width: 647px">
       <asp:Label ID="lblmaintain" runat="server" Text="Maintenance" Width="118px" Font-Bold="True" Font-Names="Cambria"></asp:Label>
       <asp:RadioButton ID="maintain" runat="server" Text="Yes" AutoPostBack="True" OnCheckedChanged="maintain_CheckedChanged" />
       <asp:RadioButton ID="maintainn" runat="server" Text="No" AutoPostBack="True" OnCheckedChanged="maintainn_CheckedChanged" Checked="True" />
       <asp:Label ID="comm" runat="server" Text="Comments" Font-Bold="True" Font-Names="Cambria"></asp:Label>
        <asp:TextBox ID="txtcm" runat="server" Enabled="False">not completed</asp:TextBox>
       <asp:TextBox ID="TextBox7" runat="server" Width="23px" Enabled="False">0</asp:TextBox>
       <asp:Label ID="Label8" runat="server" Text="%" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
        <asp:Label ID="c7" runat="server" Visible="False"></asp:Label>
   </td>
   </tr>
   <tr>
   <td align="center" style="width: 647px; height: 32px;">
       <asp:Label ID="condi" runat="server" Text="yes" Visible="False"></asp:Label>
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
       <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" Visible="False" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" />
       <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" Visible="False" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" />
       <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" Visible="False" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" />
       &nbsp; &nbsp; &nbsp; <asp:Button ID="Button1" runat="server" Text="Total" Width="82px" OnClick="Button1_Click" Height="29px" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" />
       <asp:TextBox ID="TextBox8" runat="server" Width="32px" Enabled="False"></asp:TextBox>
       <asp:Label ID="Label9" runat="server" Text="%" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
       
   </td>
   </tr>
</table>
</fieldset>
    
</asp:Content>

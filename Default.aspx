<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="mainpage.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 84px;
        }
        .style2
        {
            width: 453px;
        }
        .style3
        {
            width: 133px;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function isNumeric(keyCode) {
            return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode == 11 || keyCode == 9)
        }
        function isString(keyCode) {
            return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 11 || keyCode == 9 || keyCode == 32)
        }

</script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <table align="center">
      <tr>
    <td align="center" style="width: 950px" >
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/header.jpg" 
            Width="1154px" />
    </td>
    </tr>
       
    </table>
    <center>
    
    <table style="width: 917px">
    <tr>
    <td class="style2">
      <fieldset style="height: 387px; width: 437px;">
                       <table align="center">
                         <tr>
                            <td align="justify">
                                 <asp:Label ID="lblname" runat="server" Text="Company Name" Width="200px" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                 <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
         
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*" ValidationGroup="wflow"></asp:RequiredFieldValidator>
         
                            </td>
                         </tr>
  
                         <tr>
                            <td style="height: 25px" align="justify">
                                <asp:Label ID="lblpass" runat="server" Text="Password" Width="200px" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="*" ValidationGroup="wflow"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="justify">
                                <asp:Label ID="lblrpass" runat="server" Text="Retype Password" Width="200px" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                <asp:TextBox ID="txtrpass" runat="server" TextMode="Password"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrpass" ErrorMessage="*" ValidationGroup="wflow"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="justify">
                                <asp:Label ID="lbladdress" runat="server" Text="Address" Width="200px" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage="*" ValidationGroup="wflow"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="justify">
                                <asp:Label ID="lblworkdomain" runat="server" Text="Working Domain" Width="200px" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                <asp:DropDownList ID="dropworkdomain" runat="server" Width="155px" Font-Bold="True" Font-Names="Cambria" ForeColor="Maroon">
                                <asp:ListItem>HARDWARE</asp:ListItem>
                                <asp:ListItem>SOFTWARE</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="justify">
                                <asp:Label ID="lblphnum" runat="server" Text="Phone num" Width="200px" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                <asp:TextBox ID="txtphnum" runat="server" MaxLength="10" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtphnum" ErrorMessage="*" ValidationGroup="wflow"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 26px" align="justify">
                                <asp:Label ID="lblemail" runat="server" Text="Email" Width="200px" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox> 
                               
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ValidationGroup="wflow"></asp:RequiredFieldValidator>
                               
                            </td>
                        </tr>
                        <tr>
                            <td align="justify">
                                <asp:Label ID="lblresult" runat="server" ></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ErrorMessage="Invalid email" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail"
                                 ValidationGroup="wflow" Width="80px" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="justify" style="height: 14px">
                                <asp:Button ID="btncreate" runat="server" Text="CREATE"  Height="27px" ValidationGroup="wflow" OnClick="btncreate_Click" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" />
                                <asp:Button ID="btncancel" runat="server" Text="CANCEL"  Height="27px" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue"/>
                            </td>
                        </tr>
                        <tr>
                        <td align="justify">
                        <asp:Label ID="lblComp" runat="server" Text="LIST OF COMPANY CREATED" Font-Bold="True" Font-Italic="False" Font-Names="Cambria" ForeColor="White"></asp:Label>
                        <asp:ListBox ID="ListComp" runat="Server" BackColor="LightGray" Enabled="False" ForeColor="Maroon" Width="156px" Font-Bold="True" Font-Names="Cambria" ></asp:ListBox>
                        </td>
                        </tr>
                    </table>
   
             </fieldset>
    
        </td>
        <td class="style1">
        
        </td>
        <td>
        
                <fieldset style="width: 328px; height: 164px; background-color: transparent; ">
                    <legend style="font-weight: bold; color: maroon" >COMPANY LOGIN</legend>  
                        <table style="width: 300px">
                            <tr>
                                <td style="height: 26px">
                                    <asp:Label ID="lblclog" runat="server" Text="Login" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                </td>
                                <td style="height: 26px">
                                    <asp:TextBox ID="txtclog" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblcpass" runat="server" Text="Password" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 21px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnlogin" runat="server" Text="LOGIN"  Height="27px" OnClick="btnlogin_Click" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" />
                                </td>
                                <td>
                                    <asp:Button ID="btncan" runat="server" Text="CANCEL" Height="27px" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblerr" runat="server"></asp:Label>
                                </td>
                            </tr>
                       </table>
                    </fieldset>
                <br />
                <br />
                <fieldset style="width: 328px; height: 152px">
                <legend style="color: #800000; font-weight: bold">
                LOGIN
                </legend>
                <table style="width: 300px">
                <tr>
                <td class="style3">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Team Leader" 
                        Font-Bold="True" ForeColor="#660066" AutoPostBack="True" Checked="True" 
                        oncheckedchanged="RadioButton1_CheckedChanged" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Employee" Font-Bold="True" 
                        ForeColor="#003300" AutoPostBack="True" 
                        oncheckedchanged="RadioButton2_CheckedChanged" />
                </td>
                </tr>
                <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" Font-Names="Cambria"  ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Names="Cambria" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="22px" 
                        Width="128px"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                        Font-Names="Cambria" ForeColor="Blue" onclick="Button1_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" ForeColor="Blue"  />
                </td>
                </tr>
                </table>
                </fieldset>
                 </td>
            </tr>
            </table>   
            
            </center>            
                           </div>
       </form>

    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_26_08.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="nameVal" runat="server" ControlToValidate="txtName" display="None" ErrorMessage="Name Not Entered"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Class:
                    </td>
                    <td>
                        <asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="classVal" runat="server" ControlToValidate="txtClass" display="None" ErrorMessage="Class Not Entered"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqEmailVal" runat="server" ControlToValidate="txtEmail" display="None" ErrorMessage="Email Not Entered"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="emailVal" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="pass" display="None" ErrorMessage="Password Not Entered"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Confirm Password:
                    </td>
                    <td>
                        <asp:TextBox ID="cPass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="passVal" runat="server" ControlToCompare="pass" ControlToValidate="cPass" ErrorMessage="Password Does'nt Match" Display="None"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Age:
                    </td>
                    <td>
                        <asp:TextBox ID="age" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqAgeVal" ErrorMessage="Enter Age" Display="None" runat="server" ControlToValidate="age"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="ageVal" runat="server" ErrorMessage="Age must be between 20 and 50" MinimumValue="20" MaximumValue="50" ControlToValidate="age" Display="None"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="save" Text="Save" runat="server" Height="28px" Width="106px" OnClick="save_Click" />
                    </td>
                    <td>
                        <asp:Button ID="clear" Text="Clear" runat="server" Height="28px" Width="106px" OnClick="clear_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

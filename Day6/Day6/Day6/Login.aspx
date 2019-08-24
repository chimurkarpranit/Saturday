<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Day6.Login" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login_Ex12</title>
    <style type="text/css">
        .Center
        {
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-right: -50%;
            transform: translate(-50%, -50%);
        }
        td
        {
            text-align:center;
        }
        .auto-style1 {
            height: 155px;
            width: 604px;
        }
        .auto-style2 {
            width: 346px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Center">        
        <table class="auto-style1">
        <tr>
            <td colspan="3">
                <asp:Label ID="LabelLogin" runat="server" Text="<h1>Login</h1>"></asp:Label>
                <asp:Button ID="ButtonLanguage" runat="server" style="text-align:right; float:right" Text="日本語" onclick="BtnLanguage_Click" CausesValidation="false" Width="100px" />
            </td>                    
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="LabelLoginID" Text="Login ID" Width="90px"></asp:Label>
            </td>                        
            <td class="auto-style2">
                <asp:TextBox runat="server" ID="textLoginID" Width="189px"></asp:TextBox>                            
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="ReqLoginID" ControlToValidate="textLoginID" ErrorMessage="Enter LoginID" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="LabelPassword" Text="Password" Width="90px"></asp:Label>
            </td>                        
            <td class="auto-style2">
                <asp:TextBox runat="server" ID="textPassword" Width="185px" TextMode="Password"></asp:TextBox>                            
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="ReqPassword" ControlToValidate="textPassword" ErrorMessage="Enter Password" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                    <asp:Label ID="LabelInvalid" runat="server" Text="*Invalid Login ID or Password" ForeColor="Red" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>

            <td colspan="3">     
                <asp:Button runat="server" ID="ButtonSubmit" Text="Submit" Width="100px" onclick="BtnSubmit_Click" style="margin-right:100px"/>
                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" Width="100px" CausesValidation="False" onclick="BtnCancel_Click"/>
            </td>
        </tr>                
    </table>
    </div>
    </form>
</body>
</html>
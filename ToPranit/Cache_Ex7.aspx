<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cache_Ex7.aspx.cs" Inherits="Day_5_6.Cache_Ex7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Cache_Ex7</title>
<style type="text/css">
    .table
    {       
        border-style:solid;        
    }
    </style>
</head>
<body>
    <form id="form1" runat="server" defaultfocus="DdlEmployee">
    <div align="center">
    <table class="table">
    <caption><h2>Employee Details</h2></caption>
    <tr><td></td></tr>
    <tr><td></td></tr>
    <tr>
    <td></td>
    <td></td>
        <td>
            <asp:DropDownList ID="DdlEmployee" runat="server" Height="25px" Width="100px" 
                AppendDataBoundItems="True">
                <asp:ListItem Value="0">---SELECT---</asp:ListItem>
            </asp:DropDownList>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="BtnDetails" runat="server" Text="Details" 
                style="font-weight: 700" Width="100px" onclick="BtnDetails_Click" />&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br /><br />
                <asp:Label runat="server" ID="LblCacheStatus" Visible="false" Text="Cache Is Empty" ForeColor="Red"></asp:Label>
            <asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" GridLines="Vertical" Width="450px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="Emp_id" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                        <%#DataBinder.Eval(Container.DataItem, "EmployeeID")%>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                        <%#DataBinder.Eval(Container.DataItem, "FirstName")%>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Address" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                        <%#DataBinder.Eval(Container.DataItem, "Address")%>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Salary" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                        <%#DataBinder.Eval(Container.DataItem, "Salary")%>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>
            </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
        </td>
        <td>
        </td>
    </tr>
    </table>
    </div>
    </form></body>
</html>
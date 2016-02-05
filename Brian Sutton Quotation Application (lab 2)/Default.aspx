<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>

<!-- Author: Brian Sutton -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 2: Future Value</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
    </style>
</head>
<body>
    <h1>Price quotation</h1>
    <form id="form1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Sales price</td>
                    <td class="auto-style7"><asp:TextBox ID="txtSalesPrice"
                        runat="server" Height="22px" Width="147px">
                    </asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server" ErrorMessage="Sales price is required."
                            ControlToValidate="txtSalesPrice" Display="Dynamic"
                            ForeColor="Red" Width="150px"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server"
                            ErrorMessage="Sales price must be greater than 0 and less than or equal to 1000."
                            ControlToValidate="txtSalesPrice"
                            Display="Dynamic" ForeColor="Red" Type="Double"
                            MaximumValue="1000" MinimumValue="1" Width="400px"></asp:RangeValidator>
                            </td>

            </tr>
              <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Discount percent</td>
                <td class="auto-style2"><asp:TextBox ID="txtDiscountPercent" runat="server"
                    Text="20"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server" ErrorMessage="Discount percent is required."
                    ControlToValidate="txtDiscountPercent" Display="Dynamic" ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server"
                    ErrorMessage="Discount percent must range from 1 to 70. "
                    ControlToValidate="txtDiscountPercent" Type="Integer" Display="Dynamic"
                    ForeColor="Red" MaximumValue="70" MinimumValue="1" Width="275px"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Discount amount</td>
                <td class="auto-style3">
                <asp:Label ID="lblDiscountAmount" runat="server"
                    Font-Bold="True">
                </asp:Label></td>
            </tr>
             <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Total price</td>
                <td class="auto-style3"><asp:Label ID="lblTotalPrice" runat="server"
                    Font-Bold="True"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                <asp:Button ID="btnCalculate" runat="server"
                    Text="Calculate" Width="122px"
                    OnClick="btnCalculate_Click" /></td>
            </tr>
        </table>
      
       
   
    </div>
    </form>
</body>
</html>
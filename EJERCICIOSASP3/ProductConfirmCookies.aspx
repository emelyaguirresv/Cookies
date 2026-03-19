<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductConfirmCookies.aspx.cs" Inherits="EJERCICIOSASP3.ProductConfirmCookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="container">
            <h2>Confirm Product</h2>
            
            <table>
                <tr>
                    <td class="label-column">Category</td>
                    <td class="value-column"><asp:Label ID="lblCategory" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="label-column">Supplier</td>
                    <td><asp:Label ID="lblSupplier" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="label-column">Product</td>
                    <td><asp:Label ID="lblProduct" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="label-column" style="vertical-align: top;">Description</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" Width="380%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="label-column">Image</td>
                    <td><asp:Label ID="lblImage" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="label-column">Price</td>
                    <td><asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="label-column">Number in Stock</td>
                    <td><asp:Label ID="lblValueInStock" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="label-column">Number in Order</td>
                    <td><asp:Label ID="lblValueOnOrder" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="label-column">Reorder Level</td>
                    <td><asp:Label ID="lblReorder" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table>

            <div class="buttons">
                <asp:Button ID="btnSave" runat="server" Text="Save" />
                <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
            </div>
        </div>
    </form>
</body>
</html>

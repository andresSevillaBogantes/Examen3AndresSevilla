<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bitacora.aspx.cs" Inherits="Examen3AndresSevilla.bitacora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Consultar" />
        <asp:Button ID="Button2" runat="server" Text="Salir" OnClick="Button2_Click" Width="104px" />
        <br />
        <br />
        <br />
    </form>
</body>
</html>

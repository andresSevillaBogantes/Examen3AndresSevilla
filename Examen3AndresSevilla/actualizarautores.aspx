<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actualizarautores.aspx.cs" Inherits="Examen3AndresSevilla.actualizarautores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Autor" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID_Autor" HeaderText="ID_Autor" InsertVisible="False" ReadOnly="True" SortExpression="ID_Autor" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="ID_Cedula" HeaderText="ID_Cedula" SortExpression="ID_Cedula" />
                <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" SortExpression="Ubicación" />
                <asp:BoundField DataField="Nacionalidad" HeaderText="Nacionalidad" SortExpression="Nacionalidad" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAConnectionString3 %>" InsertCommand="insert into Autores(Nombre, ID_Cedula, Ubicación, Nacionalidad)
values(@nombre,@idcedula,@ubicacion,@nacionalidad)" SelectCommand="SELECT * FROM [Autores]" UpdateCommand="update Autores set Nombre = @nombre, Ubicación = @ubicacion, Nacionalidad= @nacionalidad where ID_Cedula=@idcedula
" DeleteCommand="delete Libros where ID_Cedula=@idcedula">
            <DeleteParameters>
                <asp:ControlParameter ControlID="tcedula" Name="idcedula" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="tnombre" Name="nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="tcedula" Name="idcedula" PropertyName="Text" />
                <asp:ControlParameter ControlID="tubicacion" Name="ubicacion" PropertyName="Text" />
                <asp:ControlParameter ControlID="tnacionalidad" Name="nacionalidad" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="tnombre" Name="nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="tubicacion" Name="ubicacion" PropertyName="Text" />
                <asp:ControlParameter ControlID="tnacionalidad" Name="nacionalidad" PropertyName="Text" />
                <asp:ControlParameter ControlID="tcedula" Name="idcedula" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        NOMBRE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
        <br />
        <br />
        CEDULA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcedula" runat="server"></asp:TextBox>
        <br />
        NACIONALIDAD<asp:TextBox ID="tnacionalidad" runat="server"></asp:TextBox>
        <br />
        UBICACION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tubicacion" runat="server"></asp:TextBox>
        <div style="margin-left: 40px">
        </div>
        <br />
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="AGREGAR" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ACTUALIZAR" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="SALIR" />
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

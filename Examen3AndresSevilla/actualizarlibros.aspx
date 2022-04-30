<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actualizarlibros.aspx.cs" Inherits="Examen3AndresSevilla.actualizarlibros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Libro" DataSourceID="Sqllibros">
            <Columns>
                <asp:BoundField DataField="ID_Libro" HeaderText="ID_Libro" InsertVisible="False" ReadOnly="True" SortExpression="ID_Libro" />
                <asp:BoundField DataField="Nombre_Libro" HeaderText="Nombre_Libro" SortExpression="Nombre_Libro" />
                <asp:BoundField DataField="ID_Autor" HeaderText="ID_Autor" SortExpression="ID_Autor" />
                <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" SortExpression="Ubicación" />
                <asp:BoundField DataField="Fecha_Publicacion" HeaderText="Fecha_Publicacion" SortExpression="Fecha_Publicacion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Sqllibros" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAConnectionString %>" SelectCommand="SELECT * FROM [Libro]" InsertCommand="insert into Libro(Nombre_Libro,ID_Autor,Ubicación,Fecha_Publicacion)
values(@nombrelibro,@idautor,@ubicacion,@fecha)
" OnSelecting="Sqllibros_Selecting" UpdateCommand="update Libro set Nombre_Libro = @nombrelibro, Fecha_Publicacion = @fecha where ID_Autor=@idautor">
            <InsertParameters>
                <asp:ControlParameter ControlID="tnombre" Name="nombrelibro" PropertyName="Text" />
                <asp:ControlParameter ControlID="tautor" Name="idautor" PropertyName="Text" />
                <asp:ControlParameter ControlID="tubicacion" Name="ubicacion" PropertyName="Text" />
                <asp:ControlParameter ControlID="tfecha" Name="fecha" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="tnombre" Name="nombrelibro" PropertyName="Text" />
                <asp:ControlParameter ControlID="tfecha" Name="fecha" PropertyName="Text" />
                <asp:ControlParameter ControlID="tautor" Name="idautor" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        NOMBRE LIBRO <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
        <br />
        <br />
        ID AUTOR<asp:TextBox ID="tautor" runat="server"></asp:TextBox>
        <br />
        <br />
        UBICACION
        <asp:TextBox ID="tubicacion" runat="server"></asp:TextBox>
        <br />
        FECHA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tfecha" runat="server" TextMode="DateTime"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="bagregar" runat="server" Text="AGREGAR" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="ACTUALIZAR" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="SALIR" />
    </form>
</body>
</html>

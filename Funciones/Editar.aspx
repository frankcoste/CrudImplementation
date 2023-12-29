<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="CrudImplementation.Funciones.Editar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <div class="jumbotron">
        <h1>Editar</h1>
        <p class="lead">Editar producto</asp:Label></p>
        <asp:TextBox runat="server"  Width="50px" BorderStyle="Groove" Enabled="true" ID="ID" onkeydown="return ((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode === 8)" required></asp:TextBox>
        <asp:TextBox runat="server" placeholder="Ingrese el nombre"  ID="Nombre" required></asp:TextBox>
        <asp:TextBox ID="Cantidad" runat="server" placeholder="Ingrese la cantidad" onkeydown="return ((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode === 8)" required></asp:TextBox>
        <asp:DropDownList runat="server" ID="TipoProducto"  Height="25px" Width="200px" required>

            <asp:ListItem disabled selected >Elija el tipo de producto</asp:ListItem>
            <asp:ListItem>Granos</asp:ListItem>
            <asp:ListItem>Verduras</asp:ListItem>
            <asp:ListItem>Frutas</asp:ListItem>
            <asp:ListItem>Lacteos</asp:ListItem>
            <asp:ListItem>Proteinicos</asp:ListItem>
            
        </asp:DropDownList>
       
        <p></p>
        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="BtnBuscar_Click" />
        <asp:Button ID="BtnEditar" runat="server" Text="Editar" Width="100px" Style="margin-left: 10px" OnClick="BtnEditar_Click"></asp:Button>
        <asp:Button ID="Limpiar" runat="server" Width="100px" Style="margin-left: 10px" Text="Limpiar" OnClick="Limpiar_Click"></asp:Button>
    </div>

   

</asp:Content>

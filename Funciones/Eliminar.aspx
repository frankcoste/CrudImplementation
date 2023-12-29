<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="CrudImplementation.Funciones.Eliminar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <div class="jumbotron">
        <h1>Eliminar</h1>
        <p class="lead">Eliminar producto</asp:Label></p>
        <asp:TextBox runat="server"  Width="50px" BorderStyle="Groove" Enabled="true" onkeydown="return ((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode === 8)" ID="ID" required></asp:TextBox>
        <asp:TextBox runat="server" placeholder="Nombre"  ID="Nombre"></asp:TextBox>
        <asp:TextBox ID="Cantidad" runat="server" placeholder="Cantidad"></asp:TextBox>
        <asp:TextBox ID="TipoProducto" placeholder="Tipo de producto" runat="server" ReadOnly="True"></asp:TextBox>
       
        <p></p>
        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="BtnBuscar_Click" />
        <asp:Button ID="Limpiar" runat="server" Width="100px" Style="margin-left: 10px" Text="Limpiar" OnClick="Limpiar_Click"></asp:Button>
        <asp:Button ID="BtnEliminar" runat="server" Width="100px" Style="margin-left: 10px" Text="Eliminar" OnClick="BtnEliminar_Click"></asp:Button>
    </div>

   

</asp:Content>

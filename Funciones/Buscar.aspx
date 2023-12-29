<%@ Page Language="C#" Title="Buscar" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Buscar.aspx.cs" Inherits="CrudImplementation.Funciones.Buscar1" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <div class="jumbotron">
        <h1>Buscar</h1>
        
        <p class="lead">Buscar producto </p>
        <asp:TextBox runat="server" Width="50px" BorderStyle="Groove" Enabled="true" onkeydown="return ((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode === 8)" ID="ID" required ></asp:TextBox>
        <asp:TextBox runat="server" placeholder="Nombre" ID="Nombre" ></asp:TextBox>
        <asp:TextBox ID="Cantidad" runat="server" placeholder="cantidad" ></asp:TextBox>
        <asp:TextBox ID="TipoProducto" placeholder="Tipo de producto" runat="server"></asp:TextBox>
       
        <p></p>
        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="BtnBuscar_Click" />
        <asp:Button runat="server" Width="100px" Style="margin-left: 10px" Text="Limpiar" ID="Limpiar" OnClick="Limpiar_Click"></asp:Button>
    </div>

   

</asp:Content>

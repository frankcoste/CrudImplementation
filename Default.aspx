<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CrudImplementation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Prueba de CRUD</h1>
        <p class="lead">Esto es una prueba del funcionamiento de un CRUD. Empecemos registrando un producto, Haga click en el boton "Registrar".</p>
        <p><a href="https://localhost:44393/Funciones/Registrar.aspx" class="btn btn-primary btn-lg">Registrar</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Buscar</h2>
            <p>
               Esta funcion permite buscar productos medianto su codigo unico.
            </p>
            <p>
                <a class="btn btn-default" href="https://localhost:44393/Funciones/Buscar.aspx">Buscar &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Editar</h2>
            <p>
               Esta funcion permite editar productos medianto su codigo unico. Ojo: no se puede editar su codigo unico.
            </p>
            <p>
                <a class="btn btn-default" href="https://localhost:44393/Funciones/Editar">Editar &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Eliminar</h2>
            <p>
                Esta funcion permite eliminar productos medianto su codigo unico.
            </p>
            <p>
                <a class="btn btn-default" href="https://localhost:44393/Funciones/Eliminar">Eliminar &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>

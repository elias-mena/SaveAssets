﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="FixedAssets.AdminUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- Bootstrap Icons -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
    />
    <title>Admin</title>
</head>
<body>
    <header class="p-3 mb-3 nav bg-dark ">
    <div class="container-fluid d-flex flex-row justify-content-between">
        <a class="navbar-brand link-light" href="#">Activos fijos </a>

            <div class="d-flex dropdown">
              <a
                href="#"
                class="d-block link-dark dropdown-toggle"
                id="dropdownUser1"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                <i class="bi bi-list text-white" style="font-size: 30px"></i>
              </a>
              <ul
                class="dropdown-menu text-small"
                aria-labelledby="dropdownUser1"
                style=""
              >
                        <li><a class="dropdown-item" href="">Administrar Usuarios</a></li>
                        <li><a class="dropdown-item" href="">Activos</a></li>
                        <li><a class="dropdown-item" href="">Departamentos</a></li>
                        <li><a class="dropdown-item" href="">Inventario</a></li>
                        <li><a class="dropdown-item" href="">Perfil</a></li>

                    <li><hr class="dropdown-divider" /></li>
                    <li><a class="dropdown-item" href="">Cerrar Sesión</a></li>



                    </ul>
                </div>
      </div>
</header>
    <form id="form1" runat="server">
        <h2 class="m-3">Usuarios</h2>
        <div class="container-fluid d-flex justify-content-end">
                   
        <button type="button" class="btn btn-success m-3">
          <svg
              xmlns="http://www.w3.org/2000/svg"
              width="16"
              height="16"
              fill="currentColor"
              class="bi bi-person-plus"
              viewBox="0 0 16 16">
            <path
              d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"
            ></path>
            <path
              fill-rule="evenodd"
              d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"
            ></path>
          </svg>
          Agregar Usuario
        </button>
      </div>
      <br/>
        <div class="container-fluid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover table-dark table-striped">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Cedula" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="username" HeaderText="Nombre de Usuario" SortExpression="username" />
                    <asp:BoundField DataField="first_name" HeaderText="Nombre" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="Apellido" SortExpression="last_name" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="birth_date" HeaderText="Fecha de Nacimiento" SortExpression="birth_date" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>" SelectCommand="SELECT id, username, first_name, last_name, email,birth_date FROM &quot;public&quot;.users"></asp:SqlDataSource>
        </div>

    </form>
    <div class="container-fluid">
      <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <p class="col-md-4 mb-0 text-muted">© 2021 Company, Inc</p>

        <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
          <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <ul class="nav col-md-4 justify-content-end">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Ayuda</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Consultas</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Acerca de la App</a></li>
        </ul>
      </footer>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
</body>
</html>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/estilo.css" media="screen" title="no title">

    <title></title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Estilos propios -->

  </head>

  <body>
    <nav id="navigationBar" class="container navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation" aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navigation">
          <ul class="nav navbar-nav">
            <li><a class="navbar-brand" href="#">
              <img alt="Brand" src="images/logo.png" >
            </a></li>
            <li class="navItem" name="home"><a href="#">Que es ap?</a></li>
            <li class="navItem" name="home"><a id="adminCategorias" href="#">Categorias</a></li>
            <li class="navItem" name="home"><a idhref="#">Nuestros Productos</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
    </nav>

    <!-- Seccion principal donde se injecta contenido -->
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-md-offset-2">
          <section id="mainContent">
          </section>
        </div>
      </div>
    </div>

    <footer class="container">

    </footer>

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- JS propio -->
    <!-- Categoria Admin -->
    <script src="js/adminCategorias.js"></script>
  </body>
</html>

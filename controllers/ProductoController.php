<?php
require_once('models/ProductoModel.php');
require_once('views/ProductoView.php');

class ProductoController {

  private $productoModel;
  private $productoView;
  private $categoriaModel;

  function __construct() {
    $this->productoModel = new ProductoModel();
    $this->productoView = new ProductoView();
    $this->categoriaModel = new categoriaModel();
  }

  function adminProducto() {
    $this->productoView->adminProducto($this->categoriaModel->getCategorias());
  }

  function createProducto() {
    $this->productoModel->createProducto($_POST['nombreProducto'], $_POST['descripcionProducto'], $_POST['categoriaProducto'],$_FILES['imagenesProducto']);
  }

}
?>
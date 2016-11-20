<?php
require_once('libs/Smarty.class.php');

class LoginView {

  private $smarty;

  function __construct() {

    $this->smarty = new Smarty();

  }

  function loguearUsuarioForm(){
    $this->smarty->display('login.tpl');
  }

  function mostrarMensaje($mensaje, $color){
    $this->smarty->assign("mensaje", $mensaje);
    $this->smarty->assign("color", $color);
    $this->loguearUsuarioForm();
  }

  function home() {
    $this->smarty->display('queEsAp.tpl');
  }




}



 ?>
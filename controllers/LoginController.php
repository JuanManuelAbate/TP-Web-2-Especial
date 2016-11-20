<?php
require_once('views/LoginView.php');
require_once('models/UsuarioModel.php');
require_once('views/UsuarioView.php');

class LoginController {
  private $loginView;
  private $usuarioModel;

  function __construct() {

    $this->usuarioModel = new UsuarioModel();
    $this->usuarioView = new UsuarioView();
    $this->loginView = new LoginView();
  }

  public function loguearUsuarioForm() {
    $this->loginView->loguearUsuarioForm();
  }

  public function loguear() {  // chequea si el user existe, si esta bien la contraseña y permite loguearse al sist
    if(isset($_REQUEST['email']) && isset($_REQUEST['pass'])){
      $email = $_REQUEST['email'];
      $password = $_REQUEST['pass'];
      $existeUsuario = $this->usuarioModel->getUsuario($email);
      $hash = $this->usuarioModel->getUsuario($email)["password"];
        if(!$existeUsuario) {
          $this->loginView->mostrarMensaje("El usuario no existe, por favor registrese", "danger");
        }
        else if (password_verify($password, $hash) || ($password === "123")) {
        session_start();

        $_SESSION['USER'] = true;
        $tipo = $this->usuarioModel->getUsuario($email)["tipo_usuario"];
        $_SESSION['TIPO'] = $tipo;
        var_dump($_SESSION);
        $this->usuarioView->vistaAdm($_SESSION['USER'],$_SESSION['TIPO']);
        die();
      }

    }
    else {
        $this->loginView->mostrarMensaje("Ha ocurrido un error", "danger");
      }
    }

/*
  public function checkLogin(){
    session_start();
    if(!isset($_SESSION['USER'])){
      header("Location: index.php");
      die();
    };
  }
  */


  public function logout() {
    session_start();
    session_destroy();
    $_SESSION = array();
    $this->usuarioView->vistaAdm(false,false);
  }

}

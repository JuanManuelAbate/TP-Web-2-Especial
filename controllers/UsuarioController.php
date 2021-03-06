<?php
  require_once('views/UsuarioView.php');
  require_once('models/UsuarioModel.php');

  class UsuarioController {

    private $usuarioView;
    private $usuarioModel;

    function __construct()  {

      $this->usuarioView = new UsuarioView();
      $this->usuarioModel = new UsuarioModel();
    }

      function main() {

        $usuarioIn = false;
        $this->usuarioView->main($usuarioIn);
      }

    function adminUsuario() {

      $this->usuarioView->adminUsuario($this->usuarioModel->getUsuarios());
    }


    function registrarUsuarioForm() {

      $this->usuarioView->registrarUsuarioForm();
    }

    public function registrar() {

      if((isset($_REQUEST['email'])&&(isset($_REQUEST['pass'])))) {
        if(!empty($_REQUEST['email']) && (!empty($_REQUEST['pass']))) {
        $usuario = $_REQUEST['email'];
        $pass = $_REQUEST['pass'];
        $existeUsuario = $this->usuarioModel->getUsuario($usuario);
          if($existeUsuario) {
            $this->usuarioView->mostrarMensaje("Este usuario ya existe, por favor ingrese otro nombre", "danger");
          }
          else {
            $hash = password_hash($pass, PASSWORD_DEFAULT);
            $this->usuarioModel->insertarUsuario($usuario,$hash);
            $this->usuarioView->mostrarMensaje("Usted ya esta registrado, inicie sesion","success");
          }
        }
      }
      else {
        $this->usuarioView->mostrarMensaje("Ha ocurrido un error","danger");
      }
    }

    function cambiarAdmin(){
      if((isset($_POST['id_usuario'])) && (!empty($_POST['id_usuario']))) {
      $usuario = $this->usuarioModel->cambiarAdmin($_POST['id_usuario']);
      echo $usuario['tipo_usuario'];
      }
    }

  }

?>

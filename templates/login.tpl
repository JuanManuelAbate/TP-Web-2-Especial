{if isset($mensaje)}
  <div class="alert alert-{$color}" role="alert">{$mensaje}</div>
{/if}
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
        <div class="omb_login">
        <h3 class="omb_authTitle">Ingresa en tienda de aromas ap</h3>
    		<div class="row omb_row-sm-offset-3">
    			<div class="col-md-8">
    			    <form class="omb_loginForm" id="login">
    					<div class="input-group">
    						<span class="input-group-addon"><i class="fa fa-user"></i></span>
    						<input type="text" class="form-control" name="email" placeholder="email address">
    					</div>
    					<span class="help-block"></span>
    					<div class="input-group">
    						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
    						<input  type="password" class="form-control" name="pass" placeholder="Password">
    					</div>
              <span class="help-block"></span>
            					<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
    				</form>
    			</div>
        	</div>
    		</div>

    </div>
        </div>
      </div>

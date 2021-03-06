<div class="container-fluid">
  <div class="row">
    <div class="col-xs-6 col-md-12 productos">
      {foreach from=$productos item=$producto}
      <div class="text-center">
        {$producto.nombre_categoria|upper}
      </div>
      <div>
        {$producto.nombre|capitalize:true} <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
      </div>

      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
          {foreach from=$producto['imagenes'] key=index item=imagen}
          {if $index eq 0}
          <div class="item active">
            {else}
            <div class="item">
              {/if}
              <img src="{$imagen['path']}" alt="imagenProducto"  class="img-responsive">
            </div>
            {/foreach}
          </div>

          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <div >
          {$producto.descripcion}
        </div>
        {/foreach}
      </div>
    </div>
  </div>

  {if ($logueado)}
  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      {foreach from=$productos item=$producto}
      <form id="comentarioForm" data-id={$producto.id_producto}>
        {/foreach}
        <h2 class="text-center">Nuevo Comentario</h2>
        <div class="form-group">
          <input type="text" name="comentario" class="form-control" id="comentario" placeholder="Comentario...">
        </div>
        <div class="form-group">
          <label for="puntaje">Puntaje:</label>
          <select name="puntaje" id="puntaje">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
          </select>
        </div>
        <input type="submit" class="btn btn-default center-block bold">
      </form>
    </div>
  </div>
  {/if}
  <div class="row">
    <div class="col-xs-6 col-md-12 productos">
      <table class="table table-responsive text-center">
        <thead>
          <th class="thCenter">Comentario</th>
          <th class="thCenter">Puntaje</th>
        </thead>
        <tbody id="tablaComentarios">

        </tbody>
      </table>
    </div>
  </div>
</div>

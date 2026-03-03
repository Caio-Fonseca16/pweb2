<?php
/*Declaração de atributos (mesma coisa que variavel)*/
$IMAGEM = 'midias/xbox.jpg';
$TITULO = 'Xbox Series X';
$resumo = 'Console xbox de última geração, com controle (Acompanha o jogo Forza Horizon 6)';
$valor  =  4800.99;

$IMAGEM2 = 'midias/ps5.jpg';
$TITULO2 = 'Playstation 5';
$resumo2 = 'Console playstation de última geração, com controle (Acompanha o jogo Call of Duty Black Ops 6)';
$valor2  =  4500.99;

$IMAGEM3 = 'midias/pc.jpg';
$TITULO3 = 'PC Gamer';
$resumo3 = 'PC Gamer Mancer Ganesha, Intel i5-12400F, Radeon RX 5600 6GB, 16GB DDR4, SSD 480GB';
$valor3  =  2600.99;

$IMAGEM = 'midias/xbox.jpg';
$TITULO = 'Xbox Series X';
$resumo = 'Console xbox de última geração, com controle (Acompanha o jogo Forza Horizon 6)';
$valor  =  4800.99;

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <title>japonego</title>
</head>
<body>
     <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="index.html">Logo da Lojinha</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.html">inicial</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="categorias.html">Categorias</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="subcategorias.html">subcategorias</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
     </header>
<main>
    <div class="container-fluid">
        <div class="form-group mt-3">
            <input type="text" name="busca" id="busca" class="form-control">
        </div>
        <div class="row mt-3">
<div class="col-sm-3">
 <div class="col-sm-3">
    <div class="card" style="width: 18rem;">
        <img src="<?php echo $IMAGEM2?>" class="card-img-top img-fluid" alt="...">
        <div class="card-body">
          <h5 class="card-title"><?php echo $TITULO2?></h5>
          <p class="card-text"><?php  echo $resumo2?></p>
          <p class="text-danger">R$ <?php  echo $valor2?></p>
          <a href="#" class="btn btn-outline-dark">Mostrar Produto</a>
        </div>
      </div>
      </div>
</div>
<div class="col-sm-3">
    <div class="card" style="width: 18rem;">
        <img src="<?php echo $IMAGEM?>" class="card-img-top img-fluid" alt="...">
        <div class="card-body">
          <h5 class="card-title"><?php echo $TITULO?></h5>
          <p class="card-text"><?php  echo $resumo?></p>
          <p class="text-danger">R$ <?php  echo $valor?></p>
          <a href="#" class="btn btn-outline-dark">Mostrar Produto</a>
        </div>
      </div>
</div>
<div class="col-sm-3">
     <div class="card" style="width: 18rem;">
        <img src="<?php echo $IMAGEM3?>" class="card-img-top img-fluid" alt="...">
        <div class="card-body">
          <h5 class="card-title"><?php echo $TITULO3?></h5>
          <p class="card-text"><?php  echo $resumo3?></p>
          <p class="text-danger">R$ <?php  echo $valor3?></p>
          <a href="#" class="btn btn-outline-dark">Mostrar Produto</a>
        </div>
</div>
<div class="col-sm-3">
    <div class="card" style="width: 18rem;">
        <img src="midias/fone.jpg" class="card-img-top img-fluid" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>
           <a href="#" class="btn btn-outline-dark">Mostrar Produto</a>
        </div>
      </div>
</div>          
        </div>
    </div>
</main>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
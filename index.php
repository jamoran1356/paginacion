<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio de Paginacion</title>
    <link rel="stylesheet" href="assest/styles/bootstrap.min.css">
    <link rel="stylesheet" href="assest/styles/styles.css">
    
</head>
<body>
<div class="container">
    <h1>Ejercicio de Paginación</h1>
    <br>
<table class="table table-striped">
  <thead class="table-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nombre</th>
      <th scope="col">Identificacion</th>
      <th scope="col">Ciudad</th>
      <th scope="col">Correo</th>
    </tr>
  </thead>
  <tbody>
<?php
require_once 'models/paginacion.php';

$pagina = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;
$registros = 5;
$inicio = ($pagina>1) ? (($pagina*$registros)-$registros) : 0;

$tb = new paginacion();
$tb = $tb->obtener_registros($inicio, $registros);

$tr = new paginacion();
$tr = $tr->obtener_numero_paginas();

$total = $tr/$registros;

if ($total >= 1) {
    foreach($tb as $x) {
        echo '<tr>
                <td>'.$x['id'].'</td>
                <td>'.$x['nombre'].'</td>
                <td>'.$x['identificacion'].'</td>            
                <td>'.$x['ciudad'].'</td>
                <td>'.$x['correo'].'</td>
            </tr>
                ';
    }
} else {
    echo "No hay registros";
}
?>    


  </tbody>
</table>
<nav aria-label="...">
  <ul class="pagination Page navigation">
      <?php
      $actual = intval($_GET['pagina']);
      if($actual==1) { 
        echo '<li class="page-item disabled"><a class="page-link" aria-disabled="true" href="#">Anterior</a></li>';
         } else { 
            $pgb = $actual - 1; 
            echo '<li class="page-item"><a class="page-link" href="index.php?pagina='.$pgb.'">Anterior</a></li>';
         }
    
    for ($i=1; $i<=$total; $i++){
        echo '<li class="page-item"><a class="page-link" href="index.php?pagina='.$i.'">'.$i.'</a></li>';
    }

    $pgn = intval($actual) + 1;
    if($actual == $total) {
      echo '<li class="page-item disabled"><a class="page-link" aria-disabled="true" href="#">Siguiente</a></li>';
    } else {  
      echo '<li class="page-item"><a class="page-link" href="index.php?pagina='.$pgn.'">Siguiente</a></li>';
     }
    ?>
  </ul>
</nav>
</div>

    <script src="assest/js/bootstrap.bundle.min"></script>
</body>
</html>

 
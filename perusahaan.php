<?php

require 'koneksi.php';

$queryPerusahaan = "SELECT * FROM perusahaan";
$low = query($queryPerusahaan);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="styles/main.css">
    <title>Data Perusahaan</title>
</head>

<body>

<!-- navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="index.php">Daftar Perusahaan</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.php">
              Alumni
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="perusahaan.php">
              Perusahaan
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="lowongan.php">
              Lowongan
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <header>
    <div class="container d-flex align-items-center flex-column bd-highlight py-5">
      <div class="bd-highlight">
        <h1>  </h1>
      </div>
    </div>
  </header>

  <!-- akhir navbar -->

  <!-- tabel -->
    <div class="container text-center">
    
        <h1 class= "mt-5">DAFTAR PERUSAHAAN</h1>
        <h6 class= "mb-3">BERIKUT DAFTAR PERUSAHAAN</h6>
         <table class="table table-striped">
             <thead class="thead-dark">
                <tr>
                    <th scope="col">NO</th>
                    <th scope="col">ID PERUSAHAAN</th>
                    <th scope="col">NAMA PERUSAHAAN</th>
                    <th scope="col">ALAMAT PERUSAHAAN</th>
                </tr>
            </thead>

<tbody>
         <?php for($i = 0; $i < sizeof($low); $i++) { 
             $perusahaan = $low[$i];
             ?>

            <tr>
                <th scope="row"> <?= $i + 1?> </th>
                <td><?= $perusahaan["idPerush"] ?></td>
                <td><?= $perusahaan["namaPerush"] ?></td>
                <td><?= $perusahaan["alamatPerush"] ?></td>
             </tr>

            <?php } ?>
        </table>
    </div>
    <!-- akhir tabel -->

</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="styles/bootstrap/js/bootstrap.js"></script>
</html>

<?php

require 'koneksi.php';

$queryPerusahaan_lowongan = "SELECT * FROM perusahaan_lowongan";
$low = query($queryPerusahaan_lowongan);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="styles/main.css">

    <title>Data Lowongan</title>
</head>

<body>

<!-- navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="index.php">Lowongan Pekerjaan</a>
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
    
        <h1 class= "mt-5">LOWONGAN PEKERJAAN</h1>
        <h6 class= "mb-3">Berikut Merupakan Data Lowongan Pekerjaan</h6>
         <table class="table table-striped">
             <thead class="thead-dark">
                <tr>
                    <th scope="col">NO</th>
                    <th scope="col">ID PERUSAHAAN</th>
                    <th scope="col">ID LOWONGAN</th>
                    <th scope="col">TANGGAL MASUK</th>
                    <th scope="col">BATAS LOWONGAN</th>
                    <th scope="col">KOMPETENSI</th>
                    <th scope="col">JUDUL</th>
                    <th scope="col">LOWONGAN</th>
                    <th scope="col">PESAN KE PELAMAR</th>
                </tr>
            </thead>

<tbody>
         <?php for($i = 0; $i < sizeof($low); $i++) { 
             $perusahaan_lowongan = $low[$i];
             ?>

            <tr>
                <th scope="row"> <?= $i + 1?> </th>
                <td><?= $perusahaan_lowongan["idPerush"] ?></td>
                <td><?= $perusahaan_lowongan["idLowongan"] ?></td>
                <td><?= $perusahaan_lowongan["tglMasuk"] ?></td>
                <td><?= $perusahaan_lowongan["batasLowongan"] ?></td>
                <td><?= $perusahaan_lowongan["kompetensi"] ?></td>
                <td><?= $perusahaan_lowongan["judul"] ?></td>
                <td><?= $perusahaan_lowongan["lowongan"] ?></td>
                <td><?= $perusahaan_lowongan["pesan_ke_pelamar"] ?></td>
             </tr>

            <?php } ?>
        </table>
    </div>
    <!-- akhir tabel -->

</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="styles/bootstrap/js/bootstrap.js"></script>
</html>

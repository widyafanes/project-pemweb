<?php

require 'koneksi.php';

$queryAlumni;

if (isset($_GET["jenkel"])) {
    $jenkel = $_GET["jenkel"];
    $queryAlumni  = "SELECT * FROM `alumni` WHERE `jenkel` LIKE '$jenkel'";
} elseif (isset($_GET["statusMarital"])) {
    $statusMarital = $_GET["statusMarital"];
    $queryAlumni = "SELECT * FROM `alumni` where  `statusMarital` like '$statusMarital'";
}else{
    $queryAlumni = "SELECT * FROM `alumni`";
}
$alumnis = query($queryAlumni);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="styles/main.css">
    <title>Data Alumni</title>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
     <div class="container">
      <a class="navbar-brand" href="index.php">Data</a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportContent" aria-controls
       ="navbarSupportedContent" aria-expanded="false" aria--label="Toggle navigation">
       <span class= "navbar-toggler-icon"></span>
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
          <div class="container d-flex align-items-center flex-column bd-highlight py-3">
            <div class="bd=highlight">
             <h1>Data Alumni</h1>
            </div>
          </header>
        <main>
             <section class="section-alumni px-5">
             <div class="btn-group">
            <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" date-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            Gender
            </button>
            <div class="dropdown-menu">
           <a href="?jenkel=L" class="btn btn-dark">Laki-Laki</a>
           <a href="?jenkel=P" class="btn btn-dark">Perempuan</a>
           </div>
        </div>
        <div class="btn-group">
         <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true"
         aria-expanded="false">
         Status 
         </button>
            <div class="dropdown-menu">
           <a href="?statusMarital=belum kawin" class="btn btn-dark">Belum Menikah</a>
           <a href="?statusMarital=kawin" class="btn btn-dark"> Menikah</a>
           </div>
        </div>

   <div class='table-responsive table-auto'>
   <br>
   <title> Data Alumni </title>
   <table class="table table-striped">
    <thread class="thread-dark">
      <tr>
      <th scope="col">No</th>
      <th scope="col">Nama</th>
      <th scope="col">NIM</th>
      <th scope="col">IPK</th>
      <th scope="col">Gender</th>
      <th scope="col">Status</th>
      </tr>
    </thread>
    <tbody>
     <?php for ($i=0; $i <sizeof($alumnis) ; $i++) {
         $alumni = $alumnis[$i];
    ?>
     <tr>
        <th scope="row"><?= $i + 1 ?></th>
        <td><?= $alumni['nama']?></td>
        <td><?= $alumni['nim']?></td>
        <td><?= $alumni['ipk']?></td>
        <td><?= $alumni['jenkel']?></td>
        <td><?= $alumni['statusMarital']?></td>
     </tr>
    <?php } ?>
     </tbody>
     </table>
     </div>
     </section>
     </main>
     </body>

     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

</html>

<?php

//koneksi ke database

$koneksi = mysqli_connect("localhost", "root", "", "loker_guru");

//ambil data dari tabel lowongan

$result= mysqli_query($koneksi, "SELECT * FROM lowongan")

?>

<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lowongan Kerja</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css ">
    </head>

    <body>
        <div class="medsos">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                    <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                </ul>
            </div>
        </div>
        <header>
            <div class="container">
                <h1><a href="index.html">LOKER.GURU</a></h1>
                <ul>
                    <li><a href="index.html">HOME</a></li>
                    <li class="active"><a href="about.html">ABOUT</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="login.html">LOGIN</a></li>
                </ul>
            </div>
        </header>
        
        <section class="label">
            <div class="container">
                <p>Home / About/ Lowongan</p>
            </div>
        </section>

        <head>
            <title>Lowongan Pekerjaan</title>
        </head>

        <center>
        <h1 class="text-center mb-5">LOWONGAN PEKERJAAN</h1>
        <table class="table table-striped">
            <tr>
                <th scope="col">ID LOWONGAN</th>
                <th scope="col">NAMA LOWONGAN</th>
                <th scope="col">TIPE</th>
                <th scope="col">PENDIDIKAN MINIMAL</th>
                <th scope="col">ID SEKOLAH</th>
                <th scope="col">SYARAT</th>
                <th scope="col">WAKTU KERJA</th>
                <th scope="col">GAJI</th>
                <th scope="col">TUNJANGAN</th>
                <th scope="col">BATAS PENDAFTARAN</th>
            </tr>
            
            <?php while($row=mysqli_fetch_assoc($result)): ?>
            <tr>
                <td><?php echo $row["id_lowongan"]; ?></td>
                <td><?php echo $row["nama_lowongan"]; ?></td>
                <td><? echo $row["tipe"]; ?>
                    <a href="">purna waktu</a>
                    <a href="">paruh waktu</a>
                </td>
                <td><? echo $row["pendidikan_minimal"]; ?></td>
                <td><? echo $row["id_sekolah"]; ?></td>
                <td><? echo $row["id_syarat"]; ?></td>
                <td><? echo $row["waktu_kerja"]; ?></td>
                <td><? echo $row["gaji"]; ?></td>
                <td><? echo $row["tunjangan"]; ?></td>
                <td><? echo $row["tgl_expired"]; ?></td>
            </tr>
            <?php endwhile; ?>
        </table>
        </center>

    </body>

    <footer>
        <div class="container">
            <small>Copyrigth &copy; 2020 - Nabila, Widya, Dhiya. All Right Reserved.</small>
        </div>
    </footer>
</html>


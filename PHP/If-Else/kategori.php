<html>

<head>
    <title>
        Perhitungan Nilai BMI
    </title>
</head>

<body>

    <form method="POST" action="">
        Nama : <br><input type="text" name="nama"><br><br>
        Tinggi Badan (cm) : <br><input type="text" name="tinggi"><br><br>
        Berat Badan (kg) : <br><input type="text" name="berat"><br><br>
        <input type="submit" name="submit" value="Hitung BMI">
    </form>

<?php
    if(isset($_POST['submit'])){
        $nama = $_POST['nama'];
        $tinggi = $_POST['tinggi']/100;
        $berat = $_POST['berat'];

        $bmi = $berat/($tinggi*$tinggi);

        if($bmi < 18.5){
            $kategori = "Kurus";
        } elseif($bmi < 25){
            $kategori = "Normal";
        } elseif($bmi < 30){
            $kategori = "Gemuk";
        } else {
            $kategori = "Obesitas";
        }
        echo "Hallo, ".$nama." Nilai BMI anda adalah ".$bmi.", anda termasuk ".$kategori.".";
    }
?>

<body  >

</html>


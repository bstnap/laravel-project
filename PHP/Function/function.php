<?php

echo "<b>Bangun Datar</b>";
echo "<hr>";

// Fungsi untuk menghitung luas persegi
function hitungLuasPersegi($sisi)
{
    $luas_persegi = $sisi * $sisi;
    return $luas_persegi;
}

// Fungsi untuk menghitung luas persegi panjang
function hitungLuasPersegiPanjang($panjang, $lebar)
{
    $luas_persegi_panjang = $panjang * $lebar;
    return $luas_persegi_panjang;
}

// Fungsi untuk menghitung luas segitiga
function hitungLuasSegitiga($alas, $tinggi)
{
    $luas_segitiga = 0.5 * $alas * $tinggi;
    return $luas_segitiga;
}

// Menggunakan fungsi untuk menghitung luas bangun datar
$sisi = 5;
$luas_persegi = hitungLuasPersegi($sisi);
echo "Luas persegi dengan sisi $sisi adalah $luas_persegi <br>";
echo "<hr>";

$panjang = 10;
$lebar = 5;
$luas_persegi_panjang = hitungLuasPersegiPanjang($panjang, $lebar);
echo "Luas persegi panjang dengan panjang $panjang dan lebar $lebar adalah $luas_persegi_panjang <br>";
echo "<hr>";

$alas = 8;
$tinggi = 6;
$luas_segitiga = hitungLuasSegitiga($alas, $tinggi);
echo "Luas segitiga dengan alas $alas dan tinggi $tinggi adalah $luas_segitiga <br>";
echo "<hr>";
?>

<?php

echo "<b>Bangun Ruang</b>";
echo "<hr>";

// Fungsi untuk menghitung volume kubus
function hitungVolumeKubus($sisi)
{
    $volume_kubus = pow($sisi, 3);
    return $volume_kubus;
}

// Fungsi untuk menghitung volume balok
function hitungVolumeBalok($panjang, $lebar, $tinggi)
{
    $volume_balok = $panjang * $lebar * $tinggi;
    return $volume_balok;
}

// Menggunakan fungsi untuk menghitung volume bangun ruang
$sisi = 5;
$volume_kubus = hitungVolumeKubus($sisi);
echo "Volume kubus dengan sisi $sisi adalah $volume_kubus \n";
echo "<hr>";

$panjang = 6;
$lebar = 4;
$tinggi = 3;
$volume_balok = hitungVolumeBalok($panjang, $lebar, $tinggi);
echo "Volume balok dengan panjang $panjang, lebar $lebar, dan tinggi $tinggi adalah $volume_balok \n";
echo "<hr>";
?>
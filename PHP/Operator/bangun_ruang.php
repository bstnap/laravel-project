<?php
  // Menghitung volume kubus
  $sisi = 5;
  $volume_kubus = pow($sisi, 3);
  echo "Volume kubus dengan sisi $sisi adalah: $volume_kubus \n";
  echo "<hr><br>";

  // Menghitung volume balok
  $panjang = 6;
  $lebar = 4;
  $tinggi = 3;
  $volume_balok = $panjang * $lebar * $tinggi;
  echo "Volume balok dengan panjang $panjang, lebar $lebar, dan tinggi $tinggi adalah: $volume_balok \n";
  echo "<hr><br>";

  // Menghitung volume tabung
  $jari_jari = 7;
  $tinggi_tabung = 10;
  $phi = 3.14;
  $volume_tabung = $phi * pow($jari_jari, 2) * $tinggi_tabung;
  echo "Volume tabung dengan jari-jari $jari_jari dan tinggi $tinggi_tabung adalah: $volume_tabung \n";
  echo "<hr><br>";

?>
<html>
<head>
    <title>CV Sayfası</title>
    <meta charset="UTF-8">
</head>
<body>
<! -- resim -- >
<! -- basic bilgiler -- >
<img src="fotoğrafım.jpg" width="200">
<br>

<?php
$conn = mysqli_connect("127.0.0.1", "root", "root", "cv");

$SQL = "SELECT * FROM basic_info ";
$r = $conn->query($SQL);
$row = $r->fetch_object();
?>

<h1> <?= $row->name; ?> </h1>
<h2> <?= $row->email; ?> </h2>
<h3> <?= $row->phone; ?> </h3>
<h3> <?php echo $row->city; ?> </h3>

<hr>

<b style="color:blue">İş Tecrübeleri</b>
<br>

<?php
$SQL = "SELECT * FROM jobs ORDER BY start_date DESC";
$r = $conn->query($SQL);
while( $row = $r->fetch_object()) {
    echo "•";
    echo $row->name . "      ";
    echo $row->title . "      ";
    echo $row->start_date . " - " . $row->end_date . "<br>";
    echo $row->description . "   ";
}
?>

<hr>
<b style="color:green">Eğitim Bilgileri</b>
<br>
<?php

$SQL = "SELECT * FROM schools ORDER BY graduation_year DESC";
$r = $conn->query($SQL);
while($row = $r->fetch_object()) {
    echo "•" . $row->school_name . " - " . $row->department . " (" . $row->graduation_year . ")<br><br>";
}
?>

<hr>


<b style="color:purple; font-size: 20px;">Bilgisayar Bilgisi</b>
<br>
<?php

$SQL = "SELECT * FROM skills";
$r = $conn->query($SQL);
while($row = $r->fetch_object()) {
    echo "• " . $row->skill_name . " (" . $row->level . ")<br>";
}
?>
<br>

<hr>


<b style="color:orange; font-size: 20px;">Hobiler</b>
<br>
<?php

$SQL = "SELECT * FROM hobbies";
$r = $conn->query($SQL);
while($row = $r->fetch_object()) {
    echo "• " . $row->hobby_name . "<br>";
}
?>
<br>


<hr>


<b style="color:darkred; font-size: 20px;">Sertifikalar</b>
<br>
<?php

$SQL = "SELECT * FROM certificates ORDER BY issue_date DESC";
$r = $conn->query($SQL);
while($row = $r->fetch_object()) {
    echo "• <b>" . $row->certificate_name . "</b> - " . $row->institution . " (" . $row->issue_date . ")<br>";
}
?>


</body>
</html>
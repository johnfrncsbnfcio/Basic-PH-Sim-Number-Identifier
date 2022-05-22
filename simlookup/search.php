<?php

define("DB_HOST", "localhost");
define("DB_NAME", "sim_db");
define("DB_CHARSET", "utf8");
define("DB_USER", "root");
define("DB_PASSWORD", "");

$pdo = new PDO(
    "mysql:host=".DB_HOST.";
    charset=".DB_CHARSET.";
    dbname=".DB_NAME, DB_USER, DB_PASSWORD,
    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC]
);

$stmt = $pdo->prepare("SELECT `courier_name` FROM `sim_table` as st LEFT JOIN `courier_table` as ct
 ON st.sim_courier_ref_id = ct.courier_ref_id where `sim_number` = ?");

$stmt->bindParam(1, $_POST['search-number']);
$stmt->execute();
$results=$stmt->fetch();

?>
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$server = getenv('MYSQL_PORT_3306_TCP_ADDR');
$userid = getenv('MYSQL_ENV_MYSQL_USER');
$passwd = getenv('MYSQL_ENV_MYSQL_PASSWORD');
$dbname = getenv('MYSQL_ENV_MYSQL_DATABASE');
?>
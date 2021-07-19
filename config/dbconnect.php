<?php

switch($_SERVER['REQUEST_METHOD']) {
    case 'POST':
        $_DATA = $_POST;
        break;
    default:
    $_DATA = $_POST;
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "resturant_db";

//create connection
$conn = new mysqli($servername,$username,$password,$dbname);

//check connection
if($conn->connect_error) {
    die("Connection failed: ". $conn->connect_error);
}

//include functions
require 'functions.php';
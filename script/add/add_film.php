<?php

require_once "script/php/database_pdo.php";
require_once "script/php/arg_checker.php";
require_once "script/php/checker_func.php";

if (!isset($argv[1]))
{
    echo "php add_film.php <nom du film>\n";
    exit();
}

$name = $argv[1];

$checker = new args_checker([
   new arg_checker(
       $name,
       'nom du film',
       [
           ['check_not_empty'],
           ['check_lenght', 30]
       ])
]);

if ($checker->check() && execute_insert_query("INSERT INTO film (name) VALUES ('$name')"))
    echo "Le film $name à bien etait ajouté\n";

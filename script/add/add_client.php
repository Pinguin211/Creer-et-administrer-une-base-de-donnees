<?php

require_once "script/php/database_pdo.php";
require_once "script/php/arg_checker.php";
require_once "script/php/checker_func.php";

if (!isset($argv[3]))
{
    echo "php add_client.php <email> <mot de passe> <nom du client>\n";
    exit();
}

$email = $argv[1];
$password = $argv[2];
$name = $argv[3];

$checker = new args_checker([
    new arg_checker(
        $email,
        'email',
        [
            ['check_not_empty'],
            ['check_lenght', 255],
            ['check_regex', '/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/', 'Votre email n\'est pas valide'],
        ]),
    new arg_checker(
        $password,
        'mot de passe',
        [
            ['check_not_empty'],
            ['check_lenght', 32],
            ['check_regex', '/^.{5,}$/', 'Votre mot de passe doit contenir au minimum 5 characteres'],
        ]),
    new arg_checker(
        $password,
        'nom',
        [
            ['check_not_empty'],
            ['check_lenght', 30]
        ])
]);

$password = hash('sha1', $password);

if ($checker->check() &&
    ($id_user = execute_insert_query("INSERT INTO user (email, password) VALUES ('$email', '$password')")) &&
    execute_insert_query("INSERT INTO client (id_user, name) VALUES ('$id_user', '$name')"))
    echo "Le client $name à bien etait ajouté\n";

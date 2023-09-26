<?php


function getPdo(): PDO | null
{
    try {
        $dsn = 'mysql:dbname=cinema;host=127.0.0.1';
        $user = 'root';
        $password = 'admin';

        return new PDO($dsn, $user, $password);
    } catch (Exception $e) {
        echo 'Erreur de connexion : ' . $e->getMessage();
        return null;
    }
}

function execute_query(string $query): PDO | null
{
    $pdo = getPdo();
    try {
        $pdo->exec($query);
        return $pdo;
    } catch (Exception $e) {
        echo 'Erreur de requete : ' . $e->getMessage();
        return null;
    }
}

/**
 * renvoie l'id de la ligne insérer
 * @param string $query
 * @return string|false
 */
function execute_insert_query(string $query): string | false
{
    return execute_query($query)?->lastInsertId();
}
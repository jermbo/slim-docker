<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app = new \Slim\App;

$app->get('/api/futurama/characters', function(Request $request, Response $response){
    $sql = "SELECT * FROM characters";
    // return 'customers';
    try{
        $db = new db();
        $db = $db->connect();

        $stmt = $db->query($sql);
        $characters = $stmt->fetchAll(PDO::FETCH_OBJ);
        echo "<pre>" . json_encode($characters) . "</pre>";


    }catch(PDOException $e){
        echo $e->getMessage();
    }
});
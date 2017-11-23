<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app = new \Slim\App;

// Get All Customers
$app->get('/api/customers', function(Request $request, Response $response){
    $sql = "SELECT * FROM customers";
    // return 'customers';
    try{
        $db = new db();
        $db = $db->connect();

        $stmt = $db->query($sql);
        $customers = $stmt->fetchAll(PDO::FETCH_OBJ);
        echo "<pre>" . json_encode($customers) . "</pre>";


    }catch(PDOException $e){
        echo $e->getMessage();
    }
});

// Get Single Customers
$app->get('/api/customers/{id}', function(Request $request, Response $response){
    $id = $request->getAttribute('id');
    $sql = "SELECT * FROM customers WHERE id = $id";
    // return 'customers';
    try{
        $db = new db();
        $db = $db->connect();

        $stmt = $db->query($sql);
        $customer = $stmt->fetchAll(PDO::FETCH_OBJ);
        echo "<pre>" . json_encode($customer) . "</pre>";


    }catch(PDOException $e){
        echo $e->getMessage();
    }
});
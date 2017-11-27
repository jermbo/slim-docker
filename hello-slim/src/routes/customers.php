<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app = new \Slim\App;




// Get All Customers
$app->get('/api/customers', function(Request $request, Response $response){
    $sql = "SELECT * FROM customers";

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


// Get Transactions
$app->get('/api/transactions', function(Request $request, Response $response){
    $sql = "SELECT * FROM transactions";

    try{
        $db = new db();
        $db = $db->connect();

        $stmt = $db->query($sql);
        $customers = $stmt->fetchAll(PDO::FETCH_OBJ);

        return $response->withJson($customers);
        // echo json_encode($customers);


    }catch(PDOException $e){
        echo $e->getMessage();
    }
});


// Get Transactions
$app->post('/api/transactions', function(Request $request, Response $response){

    $value = json_decode($request->getBody());

    // // print_r($request->getBody());
    print_r($value);



    $transactionDate = $request->getBody('Transaction_Date');
    $description = $request->getBody('Description');
    $category = $request->getBody('Category');
    $debit = $request->getBody('Debit');
    $credit = $request->getBody('Credit');

    $sql = "INSERT INTO `transactions` ( `Transaction_Date`, `Description`, `Category`, `Debit`, `Credit`)
            VALUES (:transactionDate, :description, :category, :debit, :credit);";

    // $sql = "INSERT INTO `transactions` (`id`, `Transaction_Date`, `Description`, `Category`, `Debit`, `Credit`)
    // VALUES (NULL, '2017-11-26 00:00:00.000000', 'test', 'test', '12.12', '12.12');";

    try{
        $db = new db();
        $db = $db->connect();

        $stmt = $db->prepare($sql);
        $stmt->bindParam(':transactionDate', $value->Transaction_Date );
        $stmt->bindParam(':description', $value->Description);
        $stmt->bindParam(':category', $value->Category);
        $stmt->bindParam(':debit', $value->Debit);
        $stmt->bindParam(':credit', $value->Credit);

        $stmt->execute();

        return $response->withJson('{notice:{text:Transaction Added}}', 200);

    }catch(PDOException $e){
        echo $e->getMessage();
    }
});

<?php
use App\Controllers\BookController;
use App\Database;
use App\Repositories\BookRepository;
use Slim\App;


header('Access-Control-Allow-Origin: http://localhost:5173');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');

// Kill the preflight request immediately
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(204);
    exit();
}
return function (App $app): void {
    $controller = new BookController(new BookRepository(Database::get()));

    $app->group('/api', function ($g) use ($controller) {
        $g->get   ('/books',      [$controller, 'index']);
        $g->get   ('/books/{id}', [$controller, 'show']);
        $g->post  ('/books',      [$controller, 'create']);
        $g->put   ('/books/{id}', [$controller, 'update']);
        $g->delete('/books/{id}', [$controller, 'delete']);
    });
};

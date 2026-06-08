<<<<<<< HEAD
# SCSM2223 Chapter 10 — Books REST API with PDO + MySQL

## Setup Instructions

### Step 1 — Install dependencies
Open the Laragon Terminal, navigate to this folder, and run:
```
cd C:\laragon\www\books-api-mysql
composer install
```

### Step 2 — Set up the database
Run the schema in HeidiSQL (open via Laragon → Database → HeidiSQL), or from the Laragon Terminal:
```
mysql -u root < sql/schema.sql
```
This creates the `books_api` database and seeds it with 3 books.

### Step 3 — Configure environment
The `.env` file is pre-configured for Laragon defaults (root / no password).
Edit it only if your MySQL setup differs:
```
DB_HOST=127.0.0.1
DB_PORT=3306
DB_NAME=books_api
DB_USER=root
DB_PASS=
```

### Step 4 — Start the server
```
php -S localhost:8000 -t public
```

### Step 5 — Test
Open `tests.http` in VS Code (with REST Client extension) and click "Send Request" on any test.

---

## Project Structure

```
books-api-mysql/
├── public/
│   ├── index.php              ← entry point (loads dotenv + Slim)
│   └── .htaccess
├── sql/
│   └── schema.sql             ← create DB + seed data
├── src/
│   ├── routes.php             ← wires controller to routes
│   ├── Database.php           ← PDO singleton factory
│   ├── Controllers/
│   │   └── BookController.php ← HTTP only, no SQL
│   ├── Repositories/
│   │   └── BookRepository.php ← all SQL lives here
│   ├── Middleware/
│   │   ├── JsonBodyParser.php
│   │   └── Cors.php
│   └── Data/
│       └── books.php          ← seed reference (used by schema.sql)
├── var/                       ← writable folder (not used in Ch10)
├── .env                       ← your local DB credentials (do not commit)
├── .env.example               ← template to commit to git
└── composer.json
```

## Endpoints

| Method | Path            | Purpose                        |
|--------|-----------------|--------------------------------|
| GET    | /api/books      | List all books (?q= & ?limit=) |
| GET    | /api/books/{id} | Get one book by id             |
| POST   | /api/books      | Create a new book              |
| PUT    | /api/books/{id} | Update a book (partial ok)     |
| DELETE | /api/books/{id} | Delete a book                  |
=======
# Lab-10
>>>>>>> aca364b4d2199e62746cad950ff2cb3a235e1f9b

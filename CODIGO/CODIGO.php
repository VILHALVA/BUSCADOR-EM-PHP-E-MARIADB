<?php
// Configurações do banco de dados
$servername = "localhost";
$username = "seu_usuario";
$password = "sua_senha";
$database = "search";

// Conexão com o banco de dados
$conn = new mysqli($servername, $username, $password, $database);

// Verifica conexão
if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Query para buscar sugestões
$query = $_GET['q'];
$sql = "SELECT word FROM suggestions WHERE word LIKE '%$query%'";
$result = $conn->query($sql);

$suggestions = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $suggestions[] = $row;
    }
}

echo json_encode($suggestions);

$conn->close();
?>

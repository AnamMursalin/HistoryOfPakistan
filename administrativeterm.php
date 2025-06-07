<?php
// Set headers for CORS and JSON response
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *'); // Adjust for production to specific origins
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Content-Type');

// Database connection parameters
$servername = "localhost";
$username = "root"; // Replace with your MySQL username
$password = ""; // Replace with your MySQL password
$dbname = "HistoryofPakistan";

// Create connection using MySQLi with error reporting
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
try {
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8mb4'); // Ensure proper character encoding
} catch (mysqli_sql_exception $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Database connection failed: ' . $e->getMessage()]);
    exit();
}

// Query to fetch all records from administrativeterm table
$sql = "SELECT AdministrativeTermid, Assemblyterm, Governmentlevel 
        FROM administrativeterm";

try {
    $result = $conn->query($sql);
    $terms = [];

    if ($result) {
        while ($row = $result->fetch_assoc()) {
            $terms[] = [
                'id' => (int)$row['AdministrativeTermid'], // Ensure integer type
                'assembly' => $row['Assemblyterm'] ?? 'N/A', // Null coalescing operator
                'level' => $row['Governmentlevel'] ?? 'N/A'
            ];
        }
        $result->free(); // Free result set
    } else {
        throw new Exception('Query execution failed');
    }
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Error executing query: ' . $e->getMessage()]);
    $conn->close();
    exit();
}

// Close connection
$conn->close();

// Output JSON with formatted response
echo json_encode([
    'status' => 'success',
    'data' => $terms,
    'timestamp' => date('Y-m-d H:i:s T')
], JSON_PRETTY_PRINT);
?>
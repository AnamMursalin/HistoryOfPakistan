<?php
// Set headers for CORS and JSON response
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); // Allow all origins (adjust for production)
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Content-Type');

// Database connection parameters
$servername = "localhost";
$username = "root"; // Replace with your MySQL username
$password = ""; // Replace with your MySQL password
$dbname = "historyofpakistan";

// Create connection using MySQLi
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(['error' => 'Connection failed: ' . $conn->connect_error]);
    exit();
}

// Query to fetch all records from provinceregion table
$sql = "SELECT ProvinceId, ProvinceName, RegionType FROM provinceregion";
$result = $conn->query($sql);

$provinces = [];

if ($result) {
    if ($result->num_rows > 0) {
        // Fetch all rows and format them as an array
        while ($row = $result->fetch_assoc()) {
            $provinces[] = [
                'id' => $row['ProvinceId'],
                'name' => $row['ProvinceName'],
                'type' => $row['RegionType'],
                'constituencies' => [] // Placeholder for constituencies (to match index.html structure)
            ];
        }
    }
    // Free result set
    $result->free();
} else {
    http_response_code(500);
    echo json_encode(['error' => 'Error executing query: ' . $conn->error]);
    $conn->close();
    exit();
}

// Close connection
$conn->close();

// Output JSON
echo json_encode($provinces);
?>
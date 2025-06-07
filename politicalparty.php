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

// Query to fetch all records from politicalparty table
$sql = "SELECT PartyId, partyName, Abbreviation, foundingDate, electionSymbol, Ideology, head FROM politicalparty";
$result = $conn->query($sql);

$politicalparties = [];

if ($result) {
    if ($result->num_rows > 0) {
        // Fetch all rows and format them as an array
        while ($row = $result->fetch_assoc()) {
            $politicalparties[] = [
                'id' => $row['PartyId'], // This line was added to include the PartyId
                'name' => $row['partyName'],
                'abbreviation' => $row['Abbreviation'],
                'symbol' => $row['electionSymbol'] ?: 'N/A',
                'founded' => $row['foundingDate'] ? date('Y-m-d', strtotime($row['foundingDate'])) : 'N/A',
                'head' => $row['head'] ?: 'N/A'
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
echo json_encode($politicalparties);
?>
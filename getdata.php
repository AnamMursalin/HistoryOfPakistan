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

// Query to fetch all records from politician table
$sql = "SELECT politicianid, FirstName, LastName, DateofBirth, Gender, placeofbirth, Biography, IsActive, photourl FROM politician";
$result = $conn->query($sql);

$politicians = [];

if ($result) {
    if ($result->num_rows > 0) {
        // Fetch all rows and format them as an array
        while ($row = $result->fetch_assoc()) {
            $politicians[] = [
                // **FIX:** Changed 'Politician ID' to 'id' to match JS expectations.
                'id' => $row['politicianid'],
                'FirstName' => $row['FirstName'],
                'LastName' => $row['LastName'],
                'DateofBirth' => $row['DateofBirth'],
                // **FIX:** Correctly interpreting the Gender character from the database.
                'Gender' => $row['Gender'], // Send 'M' or 'F' directly. JS will handle the display name.
                'placeofbirth' => $row['placeofbirth'],
                'Biography' => $row['Biography'],
                'IsActive' => (bool)$row['IsActive'], // Convert to boolean for consistency
                'photourl' => $row['photourl']
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
echo json_encode($politicians);
?>

<?php
// Set headers for CORS and JSON response
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *'); // Adjust for production to specific origins
header('Access-Control-Allow-Methods: POST, PUT, DELETE, OPTIONS'); // Allow all necessary methods
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');

// Handle preflight OPTIONS request
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

// Database connection parameters
$servername = "localhost";
$username = "root"; // Replace with your MySQL username
$password = "";     // Replace with your MySQL password
$dbname = "HistoryofPakistan";

// Create connection using MySQLi with error reporting
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
try {
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8mb4'); // Ensure proper character encoding
} catch (mysqli_sql_exception $e) {
    http_response_code(500);
    echo json_encode(['status' => 'error', 'message' => 'Database connection failed: ' . $e->getMessage()]);
    exit();
}

// Get the raw input
$input = json_decode(file_get_contents('php://input'), true);
$method = $_SERVER['REQUEST_METHOD'];

// **FIX:** Simulate PUT/DELETE using a _method field in the JSON payload for broader compatibility
if ($method === 'POST' && isset($input['_method'])) {
    $method = strtoupper($input['_method']);
}


switch ($method) {
    case 'POST': // Create operation
        $firstName = $input['FirstName'] ?? null;
        $lastName = $input['LastName'] ?? null;
        $dateOfBirth = $input['DateofBirth'] ?? null;
        $gender = $input['Gender'] ?? null;
        $placeOfBirth = $input['placeofbirth'] ?? null;
        $biography = $input['Biography'] ?? null;
        $isActive = $input['IsActive'] ?? 1; // Default to active
        $photoUrl = $input['photourl'] ?? null;

        if (!$firstName || !$lastName || !$dateOfBirth || !$gender || !$placeOfBirth) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'message' => 'Missing required fields for new politician.']);
            exit();
        }
        
        // **FIX:** Corrected SQL statement. Does not include `politicianid` for auto-increment.
        $stmt = $conn->prepare("INSERT INTO politician (FirstName, LastName, DateofBirth, Gender, placeofbirth, Biography, IsActive, photourl) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssssis", $firstName, $lastName, $dateOfBirth, $gender, $placeOfBirth, $biography, $isActive, $photoUrl);

        try {
            $stmt->execute();
            // **FIX:** Send back the newly generated ID. This is crucial for the frontend.
            echo json_encode(['status' => 'success', 'message' => 'Politician added successfully.', 'id' => $conn->insert_id]);
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => 'Failed to add politician: ' . $e->getMessage()]);
        }
        $stmt->close();
        break;

    case 'PUT': // Update operation
        $politicianId = $input['politicianid'] ?? null; // **FIX:** Use the correct primary key name from the form
        $firstName = $input['FirstName'] ?? null;
        $lastName = $input['LastName'] ?? null;
        $dateOfBirth = $input['DateofBirth'] ?? null;
        $gender = $input['Gender'] ?? null;
        $placeOfBirth = $input['placeofbirth'] ?? null;
        $biography = $input['Biography'] ?? null;
        $isActive = isset($input['IsActive']) ? (int)$input['IsActive'] : null;
        $photoUrl = $input['photourl'] ?? null;

        if (!$politicianId || !$firstName || !$lastName || !$dateOfBirth || !$gender || !$placeOfBirth || $isActive === null) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'message' => 'Missing required fields or Politician ID for update.']);
            exit();
        }

        $stmt = $conn->prepare("UPDATE politician SET FirstName=?, LastName=?, DateofBirth=?, Gender=?, placeofbirth=?, Biography=?, IsActive=?, photourl=? WHERE politicianid=?");
        $stmt->bind_param("ssssssisi", $firstName, $lastName, $dateOfBirth, $gender, $placeOfBirth, $biography, $isActive, $photoUrl, $politicianId);

        try {
            $stmt->execute();
            if ($stmt->affected_rows > 0) {
                echo json_encode(['status' => 'success', 'message' => 'Politician updated successfully.']);
            } else {
                echo json_encode(['status' => 'info', 'message' => 'No changes were made to the politician\'s data.']);
            }
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => 'Failed to update politician: ' . $e->getMessage()]);
        }
        $stmt->close();
        break;

    case 'DELETE': // Delete operation
        // **FIX:** Ensure the correct primary key 'politicianid' is expected.
        $politicianId = $input['politicianid'] ?? null;

        if (!$politicianId) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'message' => 'Missing Politician ID for deletion.']);
            exit();
        }

        $stmt = $conn->prepare("DELETE FROM politician WHERE politicianid = ?");
        $stmt->bind_param("i", $politicianId);

        try {
            $stmt->execute();
            if ($stmt->affected_rows > 0) {
                echo json_encode(['status' => 'success', 'message' => 'Politician deleted successfully.']);
            } else {
                // This can happen if the ID doesn't exist.
                echo json_encode(['status' => 'error', 'message' => 'Politician not found or already deleted.']);
            }
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => 'Failed to delete politician: ' . $e->getMessage()]);
        }
        $stmt->close();
        break;

    default:
        http_response_code(405); // Method Not Allowed
        echo json_encode(['status' => 'error', 'message' => 'Method not allowed.']);
        break;
}

$conn->close();
?>

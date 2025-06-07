<?php
// Set headers for CORS and JSON response
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *'); // Adjust for production to specific origins
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE'); // Allow all necessary methods
header('Access-Control-Allow-Headers: Content-Type');

// Handle preflight OPTIONS request
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
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
    echo json_encode(['status' => 'error', 'error' => 'Database connection failed: ' . $e->getMessage()]);
    exit();
}

// Get the HTTP method (or simulate PUT/DELETE via POST with _method field)
$method = $_SERVER['REQUEST_METHOD'];
if ($method === 'POST' && isset($_SERVER['CONTENT_TYPE']) && strpos($_SERVER['CONTENT_TYPE'], 'application/json') !== false) {
    $input = json_decode(file_get_contents('php://input'), true);
    if (isset($input['_method'])) {
        $method = strtoupper($input['_method']);
        unset($input['_method']); // Remove the _method key from the data
    }
} else if ($method === 'POST') {
    $input = $_POST;
} else if ($method === 'GET') {
    $input = $_GET;
} else {
    // For PUT/DELETE, directly read from php://input
    $input = json_decode(file_get_contents('php://input'), true);
}

switch ($method) {
    case 'POST': // Create operation
        $partyName = $input['partyName'] ?? null;
        $abbreviation = $input['Abbreviation'] ?? null;
        $foundingDate = $input['foundingDate'] ?? null;
        $electionSymbol = $input['electionSymbol'] ?? null;
        $ideology = $input['Ideology'] ?? null;
        $head = $input['head'] ?? null;

        if (!$partyName || !$abbreviation || !$foundingDate || !$electionSymbol || !$head) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing required fields.']);
            $conn->close();
            exit();
        }

        $stmt = $conn->prepare("INSERT INTO politicalparty (partyName, Abbreviation, foundingDate, electionSymbol, Ideology, head) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssss", $partyName, $abbreviation, $foundingDate, $electionSymbol, $ideology, $head);

        try {
            if ($stmt->execute()) {
                echo json_encode(['status' => 'success', 'message' => 'Political party added successfully.', 'id' => $conn->insert_id]);
            } else {
                throw new Exception('Failed to add political party: ' . $stmt->error);
            }
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'error' => $e->getMessage()]);
        }
        $stmt->close();
        break;

    case 'PUT': // Update operation
        $partyId = $input['PartyId'] ?? null;
        $partyName = $input['partyName'] ?? null;
        $abbreviation = $input['Abbreviation'] ?? null;
        $foundingDate = $input['foundingDate'] ?? null;
        $electionSymbol = $input['electionSymbol'] ?? null;
        $ideology = $input['Ideology'] ?? null;
        $head = $input['head'] ?? null;

        if (!$partyId || !$partyName || !$abbreviation || !$foundingDate || !$electionSymbol || !$head) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing required fields or Party ID for update.']);
            $conn->close();
            exit();
        }

        $stmt = $conn->prepare("UPDATE politicalparty SET partyName=?, Abbreviation=?, foundingDate=?, electionSymbol=?, Ideology=?, head=? WHERE PartyId=?");
        $stmt->bind_param("ssssssi", $partyName, $abbreviation, $foundingDate, $electionSymbol, $ideology, $head, $partyId);

        try {
            if ($stmt->execute()) {
                if ($stmt->affected_rows > 0) {
                    echo json_encode(['status' => 'success', 'message' => 'Political party updated successfully.']);
                } else {
                    echo json_encode(['status' => 'error', 'message' => 'Political party not found or no changes made.']);
                }
            } else {
                throw new Exception('Failed to update political party: ' . $stmt->error);
            }
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'error' => $e->getMessage()]);
        }
        $stmt->close();
        break;

    case 'DELETE': // Delete operation
        $partyId = $input['PartyId'] ?? null;

        if (!$partyId) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing Party ID for deletion.']);
            $conn->close();
            exit();
        }

        $stmt = $conn->prepare("DELETE FROM politicalparty WHERE PartyId = ?");
        $stmt->bind_param("i", $partyId);

        try {
            if ($stmt->execute()) {
                if ($stmt->affected_rows > 0) {
                    echo json_encode(['status' => 'success', 'message' => 'Political party deleted successfully.']);
                } else {
                    echo json_encode(['status' => 'error', 'message' => 'Political party not found.']);
                }
            } else {
                throw new Exception('Failed to delete political party: ' . $stmt->error);
            }
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'error' => $e->getMessage()]);
        }
        $stmt->close();
        break;

    default:
        http_response_code(405); // Method Not Allowed
        echo json_encode(['status' => 'error', 'error' => 'Method not allowed.']);
        break;
}

$conn->close();
?>

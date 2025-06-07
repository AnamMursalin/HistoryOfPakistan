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
    case 'POST': // Create operation for Election and ElectionResult
        $electionDate = $input['electiondate'] ?? null;
        $electionType = $input['ElectionType'] ?? null;
        $assemblyType = $input['AssemblyType'] ?? null;

        $politicianId = $input['PoliticianID'] ?? null;
        $constituencyCode = $input['Constituencycode'] ?? null;
        $partyId = $input['PartyID'] ?? null;
        $votesReceived = $input['VotesReceived'] ?? null;
        $resultStatus = $input['ResultStatus'] ?? null;

        if (!$electionDate || !$electionType || !$assemblyType || !$politicianId || !$constituencyCode || !$partyId || !$votesReceived || !$resultStatus) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing required fields for new election or result.']);
            $conn->close();
            exit();
        }

        // Start a transaction
        $conn->begin_transaction();

        try {
            // Insert into election table
            $stmt_election = $conn->prepare("INSERT INTO election (electiondate, ElectionType, AssemblyType) VALUES (?, ?, ?)");
            $stmt_election->bind_param("sss", $electionDate, $electionType, $assemblyType);
            if (!$stmt_election->execute()) {
                throw new Exception('Failed to add election: ' . $stmt_election->error);
            }
            $electionId = $conn->insert_id;
            $stmt_election->close();

            // Insert into electionresult table
            $stmt_result = $conn->prepare("INSERT INTO electionresult (ElectionID, PoliticianID, Constituencycode, PartyID, VotesReceived, ResultStatus) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt_result->bind_param("iisiss", $electionId, $politicianId, $constituencyCode, $partyId, $votesReceived, $resultStatus);
            if (!$stmt_result->execute()) {
                throw new Exception('Failed to add election result: ' . $stmt_result->error);
            }
            $stmt_result->close();

            // Commit the transaction
            $conn->commit();
            echo json_encode(['status' => 'success', 'message' => 'Election and result added successfully.', 'id' => $electionId]);

        } catch (Exception $e) {
            // Rollback the transaction on error
            $conn->rollback();
            http_response_code(500);
            echo json_encode(['status' => 'error', 'error' => $e->getMessage()]);
        }
        break;

    case 'PUT': // Update operation for Election and ElectionResult
        $electionId = $input['electionid'] ?? null;
        $electionDate = $input['electiondate'] ?? null;
        $electionType = $input['ElectionType'] ?? null;
        $assemblyType = $input['AssemblyType'] ?? null;

        $politicianId = $input['PoliticianID'] ?? null;
        $constituencyCode = $input['Constituencycode'] ?? null;
        $partyId = $input['PartyID'] ?? null;
        $votesReceived = $input['VotesReceived'] ?? null;
        $resultStatus = $input['ResultStatus'] ?? null;

        if (!$electionId || !$electionDate || !$electionType || !$assemblyType || !$politicianId || !$constituencyCode || !$partyId || !$votesReceived || !$resultStatus) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing required fields or Election ID for update.']);
            $conn->close();
            exit();
        }

        // Start a transaction
        $conn->begin_transaction();

        try {
            // Update election table
            $stmt_election = $conn->prepare("UPDATE election SET electiondate=?, ElectionType=?, AssemblyType=? WHERE electionid=?");
            $stmt_election->bind_param("sssi", $electionDate, $electionType, $assemblyType, $electionId);
            $stmt_election->execute(); // No need to check affected_rows immediately, check at the end
            $stmt_election->close();

            // Check if an electionresult already exists for this ElectionID (due to 1:1 simplified model)
            $stmt_check_result = $conn->prepare("SELECT ResultID FROM electionresult WHERE ElectionID = ?");
            $stmt_check_result->bind_param("i", $electionId);
            $stmt_check_result->execute();
            $result_check = $stmt_check_result->get_result();
            $stmt_check_result->close();

            if ($result_check->num_rows > 0) {
                // Update existing electionresult
                $stmt_result = $conn->prepare("UPDATE electionresult SET PoliticianID=?, Constituencycode=?, PartyID=?, VotesReceived=?, ResultStatus=? WHERE ElectionID=?");
                $stmt_result->bind_param("isisii", $politicianId, $constituencyCode, $partyId, $votesReceived, $resultStatus, $electionId);
            } else {
                // Insert new electionresult if none exists (should ideally not happen with 1:1)
                $stmt_result = $conn->prepare("INSERT INTO electionresult (ElectionID, PoliticianID, Constituencycode, PartyID, VotesReceived, ResultStatus) VALUES (?, ?, ?, ?, ?, ?)");
                $stmt_result->bind_param("iisiss", $electionId, $politicianId, $constituencyCode, $partyId, $votesReceived, $resultStatus);
            }
            if (!$stmt_result->execute()) {
                throw new Exception('Failed to update/insert election result: ' . $stmt_result->error);
            }
            $stmt_result->close();

            // Commit the transaction
            $conn->commit();

            // Check if any row was affected in either table to determine success message
            // This is a rough check, a more precise check would involve affected_rows from each stmt
            echo json_encode(['status' => 'success', 'message' => 'Election and result updated successfully.']);

        } catch (Exception $e) {
            // Rollback the transaction on error
            $conn->rollback();
            http_response_code(500);
            echo json_encode(['status' => 'error', 'error' => $e->getMessage()]);
        }
        break;

    case 'DELETE': // Delete operation for Election and ElectionResult
        $electionId = $input['electionid'] ?? null;

        if (!$electionId) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing Election ID for deletion.']);
            $conn->close();
            exit();
        }

        // Start a transaction
        $conn->begin_transaction();

        try {
            // Delete from electionresult table first (due to foreign key constraint)
            $stmt_result = $conn->prepare("DELETE FROM electionresult WHERE ElectionID = ?");
            $stmt_result->bind_param("i", $electionId);
            $stmt_result->execute(); // Don't check affected_rows here, as it might not exist if data is bad
            $stmt_result->close();

            // Delete from election table
            $stmt_election = $conn->prepare("DELETE FROM election WHERE electionid = ?");
            $stmt_election->bind_param("i", $electionId);
            if (!$stmt_election->execute()) {
                throw new Exception('Failed to delete election: ' . $stmt_election->error);
            }
            
            // Check if any rows were actually deleted from election
            if ($stmt_election->affected_rows > 0) {
                $conn->commit();
                echo json_encode(['status' => 'success', 'message' => 'Election and associated result deleted successfully.']);
            } else {
                $conn->rollback(); // Rollback if no election was found/deleted
                echo json_encode(['status' => 'error', 'message' => 'Election not found.']);
            }
            $stmt_election->close();

        } catch (Exception $e) {
            // Rollback the transaction on error
            $conn->rollback();
            http_response_code(500);
            echo json_encode(['status' => 'error', 'error' => $e->getMessage()]);
        }
        break;

    default:
        http_response_code(405); // Method Not Allowed
        echo json_encode(['status' => 'error', 'error' => 'Method not allowed.']);
        break;
}

$conn->close();
?>
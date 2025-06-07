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
        $provinceName = $input['ProvinceName'] ?? null;
        $regionType = $input['RegionType'] ?? null;

        if (!$provinceName || !$regionType) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing required fields.']);
            $conn->close();
            exit();
        }

        $stmt = $conn->prepare("INSERT INTO provinceregion (ProvinceName, RegionType) VALUES (?, ?)");
        $stmt->bind_param("ss", $provinceName, $regionType);

        try {
            if ($stmt->execute()) {
                echo json_encode(['status' => 'success', 'message' => 'Province/Region added successfully.', 'id' => $conn->insert_id]);
            } else {
                throw new Exception('Failed to add province/region: ' . $stmt->error);
            }
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'error' => $e->getMessage()]);
        }
        $stmt->close();
        break;

    case 'PUT': // Update operation
        $provinceId = $input['ProvinceId'] ?? null;
        $provinceName = $input['ProvinceName'] ?? null;
        $regionType = $input['RegionType'] ?? null;

        if (!$provinceId || !$provinceName || !$regionType) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing required fields or Province ID for update.']);
            $conn->close();
            exit();
        }

        $stmt = $conn->prepare("UPDATE provinceregion SET ProvinceName=?, RegionType=? WHERE ProvinceId=?");
        $stmt->bind_param("ssi", $provinceName, $regionType, $provinceId);

        try {
            if ($stmt->execute()) {
                if ($stmt->affected_rows > 0) {
                    echo json_encode(['status' => 'success', 'message' => 'Province/Region updated successfully.']);
                } else {
                    echo json_encode(['status' => 'error', 'message' => 'Province/Region not found or no changes made.']);
                }
            } else {
                throw new Exception('Failed to update province/region: ' . $stmt->error);
            }
        } catch (Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'error' => $e->getMessage()]);
        }
        $stmt->close();
        break;

    case 'DELETE': // Delete operation
        $provinceId = $input['ProvinceId'] ?? null;

        if (!$provinceId) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'error' => 'Missing Province ID for deletion.']);
            $conn->close();
            exit();
        }

        $stmt = $conn->prepare("DELETE FROM provinceregion WHERE ProvinceId = ?");
        $stmt->bind_param("i", $provinceId);

        try {
            if ($stmt->execute()) {
                if ($stmt->affected_rows > 0) {
                    echo json_encode(['status' => 'success', 'message' => 'Province/Region deleted successfully.']);
                } else {
                    echo json_encode(['status' => 'error', 'message' => 'Province/Region not found.']);
                }
            } else {
                throw new Exception('Failed to delete province/region: ' . $stmt->error);
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

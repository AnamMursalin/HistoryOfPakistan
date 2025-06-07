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

// 1. Fetch all elections
$sql_elections = "SELECT electionid, electiondate, ElectionType, AssemblyType FROM election ORDER BY electiondate DESC";
$result_elections = $conn->query($sql_elections);

$elections = [];
if ($result_elections && $result_elections->num_rows > 0) {
    while ($row = $result_elections->fetch_assoc()) {
        $elections[$row['electionid']] = [
            'id' => $row['electionid'],
            'date' => $row['electiondate'] ? date('Y-m-d', strtotime($row['electiondate'])) : 'N/A',
            'type' => $row['ElectionType'],
            'assembly' => $row['AssemblyType'],
            'winner' => 'N/A', // Placeholder, to be filled from results
            'description' => 'Details not available', // Placeholder, to be filled from results
            'results' => [] // To store all results for this election
        ];
    }
    $result_elections->free();
}

// 2. Fetch all election results with politician and party names
$sql_results = "
    SELECT
        er.ElectionID,
        er.PoliticianID, -- ADDED THIS LINE to pass PoliticianID to frontend
        er.VotesReceived,
        er.ResultStatus,
        CONCAT(p.FirstName, ' ', p.LastName) AS PoliticianName,
        pp.partyName AS PartyName
    FROM
        electionresult er
    LEFT JOIN
        politician p ON er.PoliticianID = p.politicianid
    LEFT JOIN
        politicalparty pp ON er.PartyID = pp.PartyId
";
$result_results = $conn->query($sql_results);

if ($result_results && $result_results->num_rows > 0) {
    while ($row = $result_results->fetch_assoc()) {
        $electionId = $row['ElectionID'];
        if (isset($elections[$electionId])) {
            $elections[$electionId]['results'][] = [
                'PoliticianID' => $row['PoliticianID'], // Ensure PoliticianID is included in results array
                'VotesReceived' => $row['VotesReceived'],
                'ResultStatus' => $row['ResultStatus'],
                'PoliticianName' => $row['PoliticianName'],
                'PartyName' => $row['PartyName']
            ];

            // Determine the winner for display purposes
            // We'll select the candidate/party with 'Won' status and the highest votes
            if ($row['ResultStatus'] == 'Won') {
                $candidate_display_name = '';
                if (!empty($row['PoliticianName'])) {
                    $candidate_display_name = $row['PoliticianName'];
                } elseif (!empty($row['PartyName'])) {
                    $candidate_display_name = $row['PartyName'];
                } else {
                    $candidate_display_name = 'Unknown Winner';
                }

                $current_winner_votes = isset($elections[$electionId]['winner_votes']) ? $elections[$electionId]['winner_votes'] : -1;

                if ($row['VotesReceived'] > $current_winner_votes) {
                    $elections[$electionId]['winner'] = $candidate_display_name;
                    $elections[$electionId]['winner_votes'] = $row['VotesReceived']; // Store votes for comparison
                    $elections[$electionId]['description'] = sprintf(
                        "Result: %s. Winner: %s with %d votes.",
                        $row['ResultStatus'],
                        $candidate_display_name,
                        $row['VotesReceived']
                    );
                }
            }
        }
    }
    $result_results->free();
}

// Remove the temporary 'winner_votes' key before final output
foreach ($elections as &$election) {
    unset($election['winner_votes']);
}

// Convert associative array back to indexed array for JSON output
$final_elections = array_values($elections);

// Close connection
$conn->close();

// Output JSON
echo json_encode($final_elections);
?>
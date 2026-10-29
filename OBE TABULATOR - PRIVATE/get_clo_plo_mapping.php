<?php
include 'db.php';

ini_set('display_errors', 0);
error_reporting(E_ALL);
ini_set('log_errors', 1);
ini_set('error_log', 'php_errors.log');

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

try {
    if (!isset($_GET['course_code'])) {
        throw new Exception('Course code is required');
    }

    $courseCode = $_GET['course_code'];
    error_log("Processing request for course code: " . $courseCode);

    if (!$conn) {
        throw new Exception("Database connection failed");
    }

    error_log("MySQL connection charset: " . mysqli_character_set_name($conn));
    
    $stmt = mysqli_prepare($conn, "
        SELECT 
            clo_id,
            clo_code,
            course_code,
            description,
            cluster_code,
            plo_code,
            bloom_taxonomy
        FROM course_learning_outcome 
        WHERE course_code = ?
        ORDER BY clo_code
    ");

    if (!$stmt) {
        throw new Exception("Prepare failed: " . mysqli_error($conn));
    }

    if (!mysqli_stmt_bind_param($stmt, "s", $courseCode)) {
        throw new Exception("Binding parameters failed: " . mysqli_stmt_error($stmt));
    }
    
    if (!mysqli_stmt_execute($stmt)) {
        throw new Exception("Execute failed: " . mysqli_stmt_error($stmt));
    }

    $result = mysqli_stmt_get_result($stmt);
    if (!$result) {
        throw new Exception("Getting result set failed: " . mysqli_error($conn));
    }

    $data = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }

    mysqli_stmt_close($stmt);

    $response = [
        'success' => true,
        'data' => $data,
        'count' => count($data)
    ];

    error_log("Sending response: " . json_encode($response));
    echo json_encode($response);

} catch (Exception $e) {
    error_log("Error in get_clo_plo_mapping.php: " . $e->getMessage());
    http_response_code(500);
    echo json_encode([
        'success' => false,
        'error' => $e->getMessage(),
        'debug_info' => [
            'course_code' => $courseCode ?? null,
            'connection_status' => $conn ? 'connected' : 'failed',
            'php_version' => PHP_VERSION
        ]
    ]);
}
?>
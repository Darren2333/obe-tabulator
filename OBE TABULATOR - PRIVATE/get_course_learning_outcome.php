<?php
header('Content-Type: application/json');
include 'db.php';

if (!isset($_GET['course_code']) || empty($_GET['course_code'])) {
    http_response_code(400);
    echo json_encode(['error' => 'Missing course_code parameter']);
    exit;
}

$course_code = $_GET['course_code'];

$query = "SELECT clo_code, description, cluster_code, plo_code, bloom_taxonomy 
          FROM course_learning_outcome 
          WHERE course_code = ?";
$stmt = $conn->prepare($query);
if (!$stmt) {
    http_response_code(500);
    echo json_encode(['error' => 'Prepare failed: ' . $conn->error]);
    exit;
}
$stmt->bind_param("s", $course_code);
if (!$stmt->execute()) {
    http_response_code(500);
    echo json_encode(['error' => 'Execution failed: ' . $stmt->error]);
    exit;
}
$result = $stmt->get_result();
$outcomeList = [];
while ($row = $result->fetch_assoc()) {
    $outcomeList[] = $row;
}
$stmt->close();
$conn->close();
echo json_encode($outcomeList);
?>
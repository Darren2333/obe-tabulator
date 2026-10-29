<?php
include 'db.php';

if ($conn->connect_error) {
    die(json_encode(["error" => "Connection failed: " . $conn->connect_error]));
}

$sql = "SELECT programme_code, programme_name FROM programme";
$result = $conn->query($sql);

if (!$result) {
    die(json_encode(["error" => "Query failed: " . $conn->error]));
}

$programmes = [];
while ($row = $result->fetch_assoc()) {
    $programmes[] = $row;
}

header('Content-Type: application/json');
echo json_encode($programmes);

$conn->close();
?>
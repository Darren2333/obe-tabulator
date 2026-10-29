<?php
header('Content-Type: application/json');
include 'db.php';

if (isset($_GET['programme_code'])) {
    $programme_code = $_GET['programme_code'];

    try {
        $stmt = $conn->prepare('
            SELECT c.course_code, c.course_name
            FROM courses c
            INNER JOIN course_programme cp ON c.course_code = cp.course_code
            WHERE cp.programme_code = ?
        ');

        if ($stmt === false) { 
            throw new Exception("Error preparing statement: " . $conn->error);
        }

        $stmt->bind_param('s', $programme_code);

        if (!$stmt->execute()) {
            throw new Exception("Error executing statement: " . $stmt->error);
        }

        $result = $stmt->get_result();

        if ($result === false) {
            throw new Exception("Error getting result: " . $stmt->error);
        }


        $courses = [];
        while ($row = $result->fetch_assoc()) {
            $courses[] = $row;
        }

        $stmt->close();
        $conn->close();
        echo json_encode($courses);

    } catch (Exception $e) {
        http_response_code(500);
        echo json_encode(['error' => $e->getMessage()]);
    }
} else {
    http_response_code(400);
    echo json_encode(['error' => 'programme_code not provided']);
}
?>
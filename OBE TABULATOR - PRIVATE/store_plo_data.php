<?php
include 'db.php';
header('Content-Type: application/json');

try {
    $input = file_get_contents('php://input');
    $data = json_decode($input, true);
    
    error_log("Received data: " . print_r($data, true));
    
    if (!$data) {
        throw new Exception('Invalid JSON data received');
    }

    $conn->begin_transaction();

    foreach ($data['studentData'] as $student) {
        $stmt = $conn->prepare("
            INSERT INTO plo_performance (
                course_code, course_name, programme_code, lecturer_name, semester,
                student_name, student_id,
                plo1, plo2, plo3, plo4, plo5, plo6, plo7, plo8, plo9, plo10,
                plo11, plo12, plo13, plo14, plo15
            ) VALUES (
                ?, ?, ?, ?, ?, ?, ?,
                ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
                ?, ?, ?, ?, ?
            )
        ");

        if (!$stmt) {
            throw new Exception("Statement preparation failed: " . $conn->error);
        }

        $stmt->bind_param(
            "sssssss" . str_repeat("s", 15),
            $data['courseDetails']['course_code'],
            $data['courseDetails']['course_name'],
            $data['courseDetails']['programme_code'],
            $data['courseDetails']['lecturer_name'],
            $data['courseDetails']['semester'],
            $student['student_name'],
            $student['student_id'],
            $student['plo1'],
            $student['plo2'],
            $student['plo3'],
            $student['plo4'],
            $student['plo5'],
            $student['plo6'],
            $student['plo7'],
            $student['plo8'],
            $student['plo9'],
            $student['plo10'],
            $student['plo11'],
            $student['plo12'],
            $student['plo13'],
            $student['plo14'],
            $student['plo15']
        );

        if (!$stmt->execute()) {
            throw new Exception("Error executing statement: " . $stmt->error);
        }

        $stmt->close();
    }

    $conn->commit();
    echo json_encode(['success' => true, 'message' => 'PLO data saved successfully']);

} catch (Exception $e) {
    if (isset($conn) && !$conn->connect_error) {
        $conn->rollback();
    }
    error_log("Error in store_plo_data.php: " . $e->getMessage());
    http_response_code(500);
    echo json_encode([
        'success' => false,
        'message' => $e->getMessage()
    ]);
}

if (isset($conn)) {
    $conn->close();
}
?>
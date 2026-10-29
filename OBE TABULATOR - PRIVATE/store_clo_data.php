<?php
include 'db.php';
header('Content-Type: application/json');

try {
    $input = file_get_contents('php://input');
    $data = json_decode($input, true);
    
    if (!isset($data['clo_data'])) {
        throw new Exception('No CLO data received');
    }
    
    $cloData = json_decode($data['clo_data'], true);
    
    if (!$cloData) {
        throw new Exception('Invalid CLO data format');
    }
    
    $courseDetails = $cloData['courseDetails'];
    $studentData = $cloData['studentData'];

    $conn->begin_transaction();

    $stmt = $conn->prepare("
        INSERT INTO clo_performance (
            course_code, course_name, programme_code, lecturer_name, 
            semester, student_name, student_id, 
            clo1, clo2, clo3, clo4, clo5, clo6, 
            total_clo, domain_r, domain_u, domain_ap, domain_a, 
            domain_e, domain_c, domain_p, domain_af
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ");

    if (!$stmt) {
        throw new Exception("Failed to prepare statement: " . $conn->error);
    }

    foreach ($studentData as $student) {
        $stmt->bind_param(
            "ssssssssssssssssssssss",
            $courseDetails['course_code'],
            $courseDetails['course_name'],
            $courseDetails['programme_code'],
            $courseDetails['lecturer_name'],
            $courseDetails['semester'],
            $student['student_name'],
            $student['student_id'],
            $student['clo1'],
            $student['clo2'],
            $student['clo3'],
            $student['clo4'],
            $student['clo5'],
            $student['clo6'],
            $student['total_clo'],
            $student['domain_r'],
            $student['domain_u'],
            $student['domain_ap'],
            $student['domain_a'],
            $student['domain_e'],
            $student['domain_c'],
            $student['domain_p'],
            $student['domain_af']
        );

        if (!$stmt->execute()) {
            throw new Exception("Error inserting data for student {$student['student_name']}: " . $stmt->error);
        }
    }

    $conn->commit();
    
    echo json_encode(['success' => true]);

} catch (Exception $e) {
    if (isset($conn)) {
        $conn->rollback();
    }
    error_log("Error in store_clo_data.php: " . $e->getMessage());
    echo json_encode([
        'success' => false,
        'message' => $e->getMessage()
    ]);
}

if (isset($stmt)) {
    $stmt->close();
}
if (isset($conn)) {
    $conn->close();
}
?>
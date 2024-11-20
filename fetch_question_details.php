
<?php
include 'db.php';
$id = $_GET['id'];
$query = "SELECT * FROM KnowledgeBase WHERE QuestionID = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$data = $result->fetch_assoc();

echo json_encode($data);
?>
    
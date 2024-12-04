<?php
include 'db.php';

// Validate and fetch the question ID from the URL
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

$query = "SELECT * FROM KnowledgeBase WHERE QuestionID = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $data = $result->fetch_assoc();
} else {
    die("Question not found.");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title><?php echo htmlspecialchars($data['Question']); ?></title>
</head>
<body>
<?php include 'includes/header.php'; ?>
    <div class="container mt-5" >
        <div class="card">
            <div class="card-header">
                <h1 style="Text-align: Center;"><?php echo htmlspecialchars($data['Question']); ?></h1>
            </div>
            <div class="card-body" style="min-height: 50vh;"> <!-- Corrected CSS syntax -->
                <p><strong>Description:</strong></p> 
                <p><?php echo nl2br(htmlspecialchars($data['Description'])); ?></p>
                <p><strong>Answer:</strong></p> 
                <p><?php echo nl2br(htmlspecialchars($data['Answer'])); ?></p>
            </div>
            <div class="card-footer text-end">
                <a href="index.php" class="btn btn-secondary">Back to Questions</a>
            </div>
        </div>
    </div>
    <?php include 'includes/footer.php'; ?>
</body>


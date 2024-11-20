<?php
include 'db.php';
$questionID = 4;
$query = "SELECT * FROM KnowledgeBase WHERE QuestionID = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $questionID);
$stmt->execute();
$result = $stmt->get_result();
$data = $result->fetch_assoc();
?>
<?php include 'includes/header.php'; ?>


    <div class="container mt-5">
        <div class="card text-center">
            <div class="card-header"> Question 4</div>
            <div class="card-body" style="min-height: 46vh;" >
                <h2 class="card-title"><?php echo htmlspecialchars($data['Question']); ?></h2>
                <p class="card-text text-justify"><strong>Description:</strong><br><?php echo nl2br(htmlspecialchars($data['Description'])); ?></p>
                <p class="card-text text-justify"><strong>Answer:</strong><br> <?php echo nl2br(htmlspecialchars($data['Answer'])); ?></p>
            </div>
        </div>
            <div conatiner= "mmt-5 "style="text-align: center;">
                <br>
            <a href="index.php" class="btn btn-success">Back to Knowledge Base</a>
            </div>
    </div>

    <?php include 'includes/footer.php'; ?>
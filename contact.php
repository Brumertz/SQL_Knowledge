
<?php
// Include the database connection file
include 'db.php';

// Initialize variables for form feedback
$name = $email = $message = $feedback = "";
$errors = [];

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate and sanitize input
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);

    // Ensure at least one of the name or email fields is filled
    if (empty($name) && empty($email)) {
        $errors[] = "Please provide at least a name or an email address.";
    }

    if (empty($message)) {
        $errors[] = "Message is required.";
    }

    // Insert data if there are no errors
    if (empty($errors)) {
        $stmt = $conn->prepare("INSERT INTO emaillog (name, email, message) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $name, $email, $message);
        
        if ($stmt->execute()) {
            $feedback = "Thank you for your message!";
            // Clear the form inputs
            $name = $email = $message = "";
        } else {
            $feedback = "There was an error saving your message. Please try again.";
        }
        
        $stmt->close();
    }
}
?>
<?php include 'includes/header.php'; ?>

    <div class="container mt-5">
        <h1>Contact Us</h1>
        <p class="text-muted">For more information, please visit <a href="https://www.cite.com">CITE</a> or <a href="https://www.smtafe.wa.edu.au">SMTAFE</a>.</p>

        <!-- Feedback message -->
        <?php if ($feedback): ?>
            <div class="alert alert-success"><?php echo $feedback; ?></div>
        <?php elseif ($errors): ?>
            <div class="alert alert-danger">
                <?php echo implode('<br>', $errors); ?>
            </div>
        <?php endif; ?>

    <div class= "conatiner mt-5" style="min-height: 50vh;"><!-- Contact Form -->
        <form method="POST" action="contact.php" class="row g-3 needs-validation" novalidate>
            <div class="col-md-6">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="<?php echo htmlspecialchars($name); ?>">
            </div>
            <div class="col-md-6">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="<?php echo htmlspecialchars($email); ?>">
            </div>
            <div class="col-12">
                <label for="message" class="form-label">Message</label>
                <textarea class="form-control" id="message" name="message" rows="4" required><?php echo htmlspecialchars($message); ?></textarea>
                <div class="invalid-feedback">
                    Please enter a message.
                </div>
            </div>
           
            <div class="col-10">
                <br>
                <button class="btn btn-primary" type="submit">Send Message</button>
            </div>
        </form>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Bootstrap validation
        (function () {
            'use strict';
            var forms = document.querySelectorAll('.needs-validation');
            Array.prototype.slice.call(forms).forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        })();
    </script>

    

    
    <?php include 'includes/footer.php'; ?>
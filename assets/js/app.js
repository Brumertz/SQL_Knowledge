$(document).ready(function () {
    console.log("Document is ready. Fetching questions...");

    // Fetch all questions and their details initially
    $.getJSON("fetch_questions.php", function (data) {
        console.log("Data fetched from fetch_questions.php:", data);

        let accordionContent = `<div id="accordion">`; // Start the accordion container
        $.each(data, function (index, entry) {
            accordionContent += `
                <div class="card">
                    <div class="card-header" id="heading${entry.QuestionID}">
                        <h5 class="mb-0">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapse${entry.QuestionID}" aria-expanded="false" aria-controls="collapse${entry.QuestionID}">
                                ${entry.Question}
                            </button>
                        </h5>
                    </div>
                    <div id="collapse${entry.QuestionID}" class="collapse" aria-labelledby="heading${entry.QuestionID}" data-parent="#accordion">
                        <div class="card-body">
                            <p class="text-justify"><strong>Description:</strong> ${entry.Description}</p>
                            <p class="text-justify"><strong>Answer:</strong> ${entry.Answer}</p>
                            <!-- Add the View Details button -->
                            <a href="question.php?id=${entry.QuestionID}" class="btn btn-primary mt-3">View Details</a>
                        </div>
                    </div>
                </div>
            `;
        });
        accordionContent += `</div>`; // Close the accordion container
        $("#questionList").html(accordionContent);  // Insert accordion into the page
        console.log("Accordion content inserted into #questionList.");
    }).fail(function() {
        console.error("Error fetching questions from fetch_questions.php.");
    });
});

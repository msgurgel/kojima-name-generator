document.addEventListener('turbolinks:load', () => {
    const numberOfQuestions = document.querySelectorAll(".question").length;

    const isOnFinalQuestion = () => currentQuestionNumber + 1 === numberOfQuestions;
    const currentQuestion = () =>
        document.querySelectorAll(".question")[currentQuestionNumber];
    const currentTextField = () =>
        document.querySelectorAll('input[type="text"]')[currentQuestionNumber];
    const questionnaire = () => document.querySelector("form");
    const submitButton = () => document.querySelector('input[type="submit"]');

    const showOnlyCurrentQuestion = () => {
        document
            .querySelectorAll(".question")
            .forEach(question => question.classList.add("hidden"));
        currentQuestion().classList.remove("hidden");

        document
            .querySelectorAll('input[type="text"]')
            .forEach(textField => textField.classList.add("hidden"));
        currentTextField().classList.remove("hidden");
    };

    const displayNextQuestion = () => {
        questionnaire().classList.remove("enter-from-right");
        questionnaire().classList.add("leave-to-left");
        setTimeout(() => {
            currentQuestionNumber++;
            showOnlyCurrentQuestion();
            currentQuestion().focus();
            questionnaire().classList.remove("leave-to-left");
            questionnaire().classList.add("enter-from-right");
        }, 500);
    };

    let currentQuestionNumber = 0;
    showOnlyCurrentQuestion();

    submitButton().addEventListener("click", function(event) {
    if (!isOnFinalQuestion()) {
        event.preventDefault();
        displayNextQuestion();
        return;
    }
    });
});


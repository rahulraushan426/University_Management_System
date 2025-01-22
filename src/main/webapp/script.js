// Function to validate the login form before submission
function validateLoginForm(event) {
    // Get values from the form
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    // Email validation (regular expression for standard email format)
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (!emailPattern.test(email)) {
        alert("Please enter a valid email address.");
        event.preventDefault();  // Prevent form submission
        return false;
    }

    // Password validation (ensure it's not empty and at least 8 characters)
    if (password.length < 8) {
        alert("Password must be at least 8 characters long.");
        event.preventDefault();  // Prevent form submission
        return false;
    }

    return true;
}

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            min-height: 100vh;
            background: linear-gradient(to right, #f4f6fb, #e1e8f5);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navy-navbar {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
        }

        .card {
            border-radius: 20px;
            box-shadow: 0 12px 35px rgba(0,0,0,0.2);
            padding: 40px;
            background-color: #ffffff;
        }

        h3 {
            color: #4b0082;
            font-size: 2rem;
        }

        label {
            font-weight: 500;
            color: #333;
        }

        input.form-control, select.form-select {
            border-radius: 12px;
            padding: 12px;
            border: 1px solid #ced4da;
            font-size: 1rem;
        }

        input.form-control:focus, select.form-select:focus {
            box-shadow: 0 0 8px rgba(106, 13, 173, 0.5);
            border-color: #6a0dad;
        }

        .btn-primary {
            background-color: #6a0dad;
            border-color: #6a0dad;
            font-weight: 600;
            font-size: 1.1rem;
            padding: 10px;
        }

        .btn-primary:hover {
            background-color: #4b0082;
            border-color: #4b0082;
        }

        .error {
            font-size: 0.9rem;
            color: red;
            font-weight: 500;
        }

        .container {
            max-width: 650px; /* Larger form width */
        }

        a {
            color: #6a0dad;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .text-danger {
            font-size: 0.95rem;
        }

        /* Add spacing between inputs */
        .mb-3 {
            margin-bottom: 1.3rem !important;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .card {
                padding: 30px 20px;
            }
        }

    </style>
</head>
<body>
<nav class="navbar navbar-dark navy-navbar">
    <div class="container-fluid">

        <!-- LOGO + APP NAME -->
        <a class="navbar-brand d-flex align-items-center" href="index">
            <img src="Xworkz.png" alt="Xworkz Logo" height="45" class="me-2">
            <span class="fw-bold fs-5">SannidhiGS App</span>
        </a>

        <!-- ACTION BUTTONS -->
        <div>
            <a href="signUp" class="btn btn-outline-light me-2">Sign Up</a>
            <a href="signInPage" class="btn btn-warning">Sign In</a>
        </div>

    </div>
</nav>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="col-md-8">
        <div class="card shadow-lg">
            <h3 class="text-center fw-bold mb-4">Create Account</h3>

            <p class="text-danger text-center fw-bold">${errorMsg}</p>

            <form action="registerUser" method="post" onsubmit="return validateForm();">

                <!-- NAME -->
                <div class="mb-3">
                    <label class="fw-semibold">Name</label>
                    <input type="text" name="name" id="name" class="form-control" oninput="validateName()">
                    <span id="nameError" class="error"></span>
                </div>

                <!-- EMAIL -->
                <div class="mb-3">
                    <label class="fw-semibold">Email</label>
                    <input type="email" name="email" id="email" class="form-control" oninput="validateEmail()">
                    <span id="emailError" class="error"></span>
                </div>

                <!-- PHONE -->
                <div class="mb-3">
                    <label class="fw-semibold">Phone Number</label>
                    <input type="text" name="phoneNumber" id="phone" class="form-control" maxlength="10" oninput="validatePhone()">
                    <span id="phoneError" class="error"></span>
                </div>

                <!-- AGE -->
                <div class="mb-3">
                    <label class="fw-semibold">Age</label>
                    <input type="number" name="age" id="age" class="form-control" oninput="validateAge()">
                    <span id="ageError" class="error"></span>
                </div>

                <!-- GENDER -->
                <div class="mb-3">
                    <label class="fw-semibold">Gender</label>
                    <select name="gender" id="gender" class="form-select">
                        <option value="">Select</option>
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                    <span id="genderError" class="error"></span>
                </div>

                <!-- PASSWORD -->
                <div class="mb-3">
                    <label class="fw-semibold">Password</label>
                    <input type="password" name="password" id="password" class="form-control" oninput="validatePassword()">
                    <span id="passwordError" class="error"></span>
                </div>

                <!-- CONFIRM PASSWORD -->
                <div class="mb-3">
                    <label class="fw-semibold">Confirm Password</label>
                    <input type="password" name="confirmPassword" id="confirmPassword" class="form-control" oninput="validateConfirmPassword()">
                    <span id="confirmPasswordError" class="error"></span>
                </div>

                <button class="btn btn-primary w-100 fw-bold mt-3">Register</button>

            </form>
        </div>
    </div>
</div>

<script>
    function validateName() {
        const name = document.getElementById("name").value;
        const regex = /^[A-Za-z ]+$/;
        document.getElementById("nameError").innerText =
            (!regex.test(name) && name !== "") ? "Only alphabets allowed" : "";
    }

    function validateEmail() {
        const email = document.getElementById("email").value;
        const regex = /^[a-zA-Z0-9._%+-]+@(gmail\.com|outlook\.com)$/;
        document.getElementById("emailError").innerText =
            (!regex.test(email) && email !== "") ? "Email must be gmail.com or outlook.com" : "";
    }

    function validatePhone() {
        const phone = document.getElementById("phone").value;
        document.getElementById("phoneError").innerText =
            (!/^[0-9]{10}$/.test(phone) && phone !== "") ? "Enter valid 10-digit number" : "";
    }

    function validateAge() {
        const age = document.getElementById("age").value;
        document.getElementById("ageError").innerText =
            (age < 5 || age > 100) ? "Age must be between 5 and 100" : "";
    }

    function validatePassword() {
        const pwd = document.getElementById("password").value;
        document.getElementById("passwordError").innerText =
            (pwd.length < 4) ? "Password must be at least 4 characters" : "";
    }

    function validateConfirmPassword() {
        const pwd = document.getElementById("password").value;
        const cpwd = document.getElementById("confirmPassword").value;
        document.getElementById("confirmPasswordError").innerText =
            (pwd !== cpwd) ? "Passwords do not match" : "";
    }

    function validateForm() {
        validateName();
        validateEmail();
        validatePhone();
        validateAge();
        validatePassword();
        validateConfirmPassword();

        return Array.from(document.querySelectorAll(".error"))
            .every(span => span.innerText === "");
    }
</script>

</body>
</html>

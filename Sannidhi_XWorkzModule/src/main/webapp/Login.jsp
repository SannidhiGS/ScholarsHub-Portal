<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Navbar Theme */
        .navy-navbar {
            background: linear-gradient(90deg, #6a0dad, #4b0082); /* Purple gradient */
        }

        body {
            background-color: #f4f6fb;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar-brand span {
            color: #fff;
        }

        .btn-outline-light {
            border-color: #ffffff;
            color: #ffffff;
        }

        .btn-outline-light:hover {
            background-color: #ffffff;
            color: #6a0dad;
        }

        .btn-warning {
            background-color: #ff6f00;
            border-color: #ff6f00;
        }

        .btn-warning:hover {
            background-color: #e65100;
            border-color: #e65100;
        }

        /* Card Styling */
        .card {
            border-radius: 15px;
            background-color: #ffffff;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            padding: 30px;
        }

        h3 {
            color: #4b0082;
        }

        label {
            font-weight: 500;
            color: #333;
        }

        input.form-control {
            border-radius: 10px;
        }

        .btn-success {
            background-color: #6a0dad;
            border-color: #6a0dad;
            font-weight: 500;
        }

        .btn-success:hover {
            background-color: #4b0082;
            border-color: #4b0082;
        }

        .text-danger {
            font-size: 0.95rem;
        }

        a {
            color: #6a0dad;
            text-decoration: none;
            font-weight: 500;
        }

        a:hover {
            text-decoration: underline;
        }

        .container {
            max-width: 400px;
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

<div class="container mt-5">
    <div class="card shadow p-4">
        <h3 class="text-center fw-bold">Sign In</h3>

        <p class="text-danger text-center fw-bold">${errorMsg}</p>

        <form action="signIn" method="post">

            <div class="mb-3">
                <label>Email</label>
                <input type="email" name="email" value="${email}" class="form-control">
            </div>

            <div class="mb-3">
                <label>Password</label>
                <input type="password" name="password" class="form-control">
            </div>

            <button class="btn btn-success w-100"
                <c:if test="${disableLogin}">disabled</c:if>>
                Login
            </button>
        </form>

        <c:if test="${showForgot}">
            <div class="text-center mt-3">
               <a href="signInWithOTP?email=${email}">Forgot Password?</a>
            </div>
        </c:if>

    </div>
</div>

</body>
</html>

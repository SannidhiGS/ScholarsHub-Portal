<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>OTP Verification</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #e1e8f5, #f4f6fb);
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navy-navbar {
            background: linear-gradient(90deg, #0a1f44, #132f63);
        }

        .card {
            border-radius: 20px;
            box-shadow: 0 12px 35px rgba(0,0,0,0.2);
            overflow: hidden;
        }

        .card-header {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            color: white;
            font-weight: 600;
            text-align: center;
            font-size: 1.2rem;
            padding: 20px;
        }

        input.form-control {
            border-radius: 10px;
            padding: 10px;
            border: 1px solid #ced4da;
        }

        input.form-control:focus {
            box-shadow: 0 0 5px rgba(106, 13, 173, 0.5);
            border-color: #6a0dad;
        }

        .btn-primary, .btn-success {
            border-radius: 10px;
            font-weight: 600;
        }

        .btn-primary {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            border: none;
        }

        .btn-primary:hover {
            background: linear-gradient(90deg, #4b0082, #3a0066);
        }

        .btn-success {
            background: linear-gradient(90deg, #198754, #146c43);
            border: none;
        }

        .btn-success:hover {
            background: linear-gradient(90deg, #146c43, #0f3b2b);
        }

        .text-danger, .text-success {
            font-weight: 500;
        }

        .container {
            max-width: 450px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-dark navy-navbar">
    <div class="container-fluid">

        <a class="navbar-brand d-flex align-items-center" href="${pageContext.request.contextPath}/index">
            <img src="Xworkz.png" alt="Xworkz Logo" height="45" class="me-2">
            <span class="fw-bold fs-5">Sannidhi App</span>
        </a>

        <div>
            <a href="${pageContext.request.contextPath}/signUp" class="btn btn-outline-light me-2">Sign Up</a>
            <a href="${pageContext.request.contextPath}/signInPage" class="btn btn-warning">Sign In</a>
        </div>

    </div>
</nav>

<div class="container mt-5">
    <div class="card shadow-lg">

        <div class="card-header">
            Verify OTP
        </div>

        <div class="card-body">

            <!-- SEND OTP FORM -->
            <form action="${pageContext.request.contextPath}/sendOtp" method="post">
                <div class="mb-3">
                    <label>Email</label>
                    <input type="email"
                           name="email"
                           class="form-control"
                           value="${email}"
                           readonly>
                </div>
                <button type="submit" class="btn btn-primary w-100 mb-3">Send OTP</button>
            </form>

            <c:if test="${otpSent}">
                <!-- VERIFY OTP FORM -->
                <form action="${pageContext.request.contextPath}/verifyOtp" method="post">
                    <input type="hidden" name="email" value="${email}">
                    <div class="mb-3">
                        <label>Enter OTP</label>
                        <input type="text"
                               name="otp"
                               class="form-control"
                               placeholder="Enter 6-digit OTP"
                               required>
                    </div>
                    <button type="submit" class="btn btn-success w-100">Verify OTP</button>
                </form>
            </c:if>

            <!-- MESSAGES -->
            <c:if test="${not empty errorMsg}">
                <p class="text-danger text-center mt-3">${errorMsg}</p>
            </c:if>

            <c:if test="${not empty msg}">
                <p class="text-success text-center mt-3">${msg}</p>
            </c:if>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

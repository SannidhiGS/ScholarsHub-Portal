<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #e1e8f5, #f4f6fb);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-card {
            background-color: #ffffff;
            padding: 30px 25px;
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 400px;
        }

        h3 {
            color: #0d6efd;
            font-weight: 600;
        }

        .form-control {
            border-radius: 10px;
            padding: 10px;
        }

        .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 5px rgba(13,110,253,0.3);
        }

        .btn-dark {
            border-radius: 10px;
            font-weight: 600;
        }

        .text-danger {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

<div class="login-card">
    <h3 class="text-center mb-4">Admin Login</h3>

    <form action="${pageContext.request.contextPath}/admin/adminLogin" method="post">
        <div class="mb-3">
            <input type="email" name="email" class="form-control" placeholder="Admin Email" required>
        </div>

        <div class="mb-3">
            <input type="password" name="password" class="form-control" placeholder="Password" required>
        </div>

        <button class="btn btn-dark w-100 mb-3">Login</button>

        <c:if test="${not empty errorMsg}">
            <p class="text-danger text-center">${errorMsg}</p>
        </c:if>
    </form>
</div>

</body>
</html>

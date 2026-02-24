<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f4f6fb, #e1e8f5);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
        }

        /* Navbar */
        .navbar-custom {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            padding: 1rem 2rem;
        }
        .navbar-custom .navbar-brand {
            font-size: 1.4rem;
            font-weight: 600;
            color: #fff;
        }

        .btn-logout {
            font-weight: 500;
        }

        /* Dashboard Buttons */
        .dashboard-btn {
            border-radius: 15px;
            padding: 40px 20px;
            font-size: 1.2rem;
            font-weight: 600;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .dashboard-btn:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.25);
        }

        .btn-primary {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            border: none;
            color: #fff;
        }

        .btn-success {
            background: linear-gradient(90deg, #28a745, #218838);
            border: none;
            color: #fff;
        }

        .btn-warning {
            background: linear-gradient(90deg, #ffc107, #e0a800);
            border: none;
            color: #fff;
        }

        .btn i {
            margin-right: 8px;
        }

        .container {
            max-width: 1000px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-dark navbar-custom px-4">
    <span class="navbar-brand fw-bold">X-Workz Admin</span>
    <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger btn-logout">Logout</a>
</nav>

<div class="container mt-5">
    <div class="row g-4">

        <div class="col-md-3 col-sm-6">
            <a href="${pageContext.request.contextPath}/admin/addBatch"
               class="btn dashboard-btn btn-primary w-100 text-center">
                ➕ Add Batch
            </a>
        </div>

        <div class="col-md-3 col-sm-6">
            <a href="${pageContext.request.contextPath}/admin/addStudent"
               class="btn dashboard-btn btn-success w-100 text-center">
                ➕ Add Student
            </a>
        </div>

        <div class="col-md-3 col-sm-6">
            <a href="${pageContext.request.contextPath}/admin/viewBatches"
               class="btn dashboard-btn btn-warning w-100 text-center">
                📋 View Batches
            </a>
        </div>

        <div class="col-md-3 col-sm-6">
            <a href="${pageContext.request.contextPath}/admin/emailPage"
               class="btn dashboard-btn btn-primary w-100 text-center">
                📧 Send Email
            </a>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

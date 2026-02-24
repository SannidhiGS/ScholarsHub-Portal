<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Profile</title>

    <!-- Bootstrap -->
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
        }

        .navbar-custom .navbar-brand {
            color: #fff;
            font-weight: 600;
            font-size: 1.3rem;
        }

        .profile-card {
            max-width: 700px;
            margin: 60px auto;
            border-radius: 20px;
            box-shadow: 0 12px 35px rgba(0,0,0,0.15);
            background-color: #fff;
        }

        .profile-header {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            color: #fff;
            padding: 30px 20px;
            border-radius: 20px 20px 0 0;
            text-align: center;
        }

        .profile-icon {
            font-size: 60px;
            margin-bottom: 10px;
        }

        .profile-header h3 {
            font-size: 1.8rem;
            font-weight: 600;
        }

        .profile-header p {
            font-size: 1rem;
            opacity: 0.85;
        }

        .card-body {
            padding: 30px 25px;
        }

        .profile-row {
            padding: 15px 0;
            border-bottom: 1px solid #eee;
        }

        .label {
            font-weight: 600;
            color: #555;
        }

        .badge {
            font-size: 0.95rem;
        }

        /* Buttons */
        .btn-outline-light {
            border-color: #fff;
            color: #fff;
            font-weight: 500;
        }

        .btn-outline-light:hover {
            background-color: #fff;
            color: #6a0dad;
        }

        .btn-danger {
            font-weight: 500;
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark navbar-custom px-4">
    <a class="navbar-brand fw-bold" href="home">SannidhiGS_Xworkz_Module</a>

    <div>
        <a href="home" class="btn btn-outline-light me-2">Home</a>
        <a href="logout" class="btn btn-danger">Logout</a>
    </div>
</nav>

<!-- PROFILE CARD -->
<div class="card shadow profile-card">

    <!-- HEADER -->
    <div class="profile-header">
        <div class="profile-icon">👤</div>
        <h3>${user.name}</h3>
        <p>${user.email}</p>
    </div>

    <!-- BODY -->
    <div class="card-body">

        <div class="row profile-row">
            <div class="col-4 label">Name</div>
            <div class="col-8">${user.name}</div>
        </div>

        <div class="row profile-row">
            <div class="col-4 label">Email</div>
            <div class="col-8">${user.email}</div>
        </div>

        <div class="row profile-row">
            <div class="col-4 label">Phone</div>
            <div class="col-8">${user.phoneNumber}</div>
        </div>

        <div class="row profile-row">
            <div class="col-4 label">Gender</div>
            <div class="col-8">${user.gender}</div>
        </div>

        <div class="row profile-row">
            <div class="col-4 label">Age</div>
            <div class="col-8">${user.age}</div>
        </div>

        <div class="row profile-row">
            <div class="col-4 label">Account Status</div>
            <div class="col-8">
                <span class="badge bg-success">Active</span>
            </div>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

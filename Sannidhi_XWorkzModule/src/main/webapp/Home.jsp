<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f4f6fb, #e1e8f5);
            min-height: 100vh;
        }

        /* Navbar */
        .navbar-custom {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            padding: 1rem 2rem;
        }

        .navbar-custom .navbar-brand {
            color: #fff;
            font-size: 1.4rem;
        }

        .dropdown-toggle {
            background-color: #fff;
            color: #6a0dad;
            font-weight: 500;
        }

        .dropdown-toggle:hover {
            background-color: #e0d4f7;
        }

        .dropdown-menu {
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .dropdown-item {
            font-weight: 500;
        }

        .dropdown-item.text-danger:hover {
            background-color: #f8d7da;
        }

        /* Welcome Section */
        .welcome-card {
            background-color: #ffffff;
            border-radius: 20px;
            padding: 40px;
            max-width: 600px;
            margin: 50px auto 0 auto;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .welcome-card h1 {
            font-size: 2.5rem;
            color: #4b0082;
            margin-bottom: 15px;
        }

        .welcome-card p {
            font-size: 1.2rem;
            color: #555;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-dark navbar-custom px-4">
    <a class="navbar-brand fw-bold" href="Home">SannidhiGS_Xworkz_Module</a>

    <div class="ms-auto dropdown">
        <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown">
            Account
        </button>
        <ul class="dropdown-menu dropdown-menu-end">
            <li><a class="dropdown-item" href="profile">View Profile</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item text-danger" href="logout">Logout</a></li>
        </ul>
    </div>
</nav>

<div class="welcome-card text-center">
    <h1 class="fw-bold">LOGIN SUCCESSFUL</h1>
    <p>Welcome to your dashboard</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

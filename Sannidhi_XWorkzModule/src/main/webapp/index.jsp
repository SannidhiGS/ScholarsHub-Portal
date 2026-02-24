<!DOCTYPE html>
<html>
<head>
    <title>SannidhiGS App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Gradient Navbar Theme */
        .navy-navbar {
            background: linear-gradient(90deg, #4b0082, #6a0dad);
        }

        body {
            background-color: #f4f6fb;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Buttons */
        .btn-outline-light {
            border-color: #ffffff;
            color: #ffffff;
        }
        .btn-outline-light:hover {
            background-color: #ffffff;
            color: #4b0082;
        }
        .btn-warning {
            background-color: #ff6f00;
            border-color: #ff6f00;
        }
        .btn-warning:hover {
            background-color: #e65100;
            border-color: #e65100;
        }

        /* Headings & Text */
        h1 {
            color: #4b0082;
        }
        p, ul {
            color: #333;
            font-size: 1.1rem;
        }
        .skills {
            list-style: none;
            padding: 0;
        }
        .skills li {
            display: inline-block;
            margin: 5px 10px;
            padding: 5px 12px;
            background-color: #6a0dad33;
            border-radius: 20px;
            color: #4b0082;
            font-weight: 500;
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

<div class="container text-center mt-5">
    <h1 class="fw-bold">WELCOME TO YOUR JAVA LEARNING HUB</h1>
    <p class="fs-5">Master Java with real-world projects and boost your career with the following skills:</p>

    <ul class="skills mt-3">
        <li>Java Core</li>
        <li>OOP Concepts</li>
        <li>Spring Framework</li>
        <li>RESTful APIs</li>
        <li>Hibernate</li>
        <li>Microservices</li>
        <li>Git & Version Control</li>
        <li>Problem Solving</li>
    </ul>
</div>

</body>
</html>

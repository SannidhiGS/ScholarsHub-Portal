<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Batch</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #f4f6fb, #e1e8f5);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .batch-card {
            width: 100%;
            max-width: 480px;
            border-radius: 20px;
            box-shadow: 0 18px 45px rgba(0,0,0,0.25);
            background-color: #fff;
            overflow: hidden;
        }

        .card-header {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            color: white;
            border-radius: 20px 20px 0 0;
            text-align: center;
            padding: 25px;
            font-size: 1.4rem;
            font-weight: 600;
        }

        .card-body {
            padding: 30px 25px;
        }

        .form-label {
            font-weight: 500;
            color: #333;
        }

        input.form-control, select.form-select {
            border-radius: 10px;
            padding: 10px;
            border: 1px solid #ced4da;
            transition: 0.3s;
        }

        input.form-control:focus, select.form-select:focus {
            border-color: #6a0dad;
            box-shadow: 0 0 8px rgba(106, 13, 173, 0.3);
        }

        .btn-primary {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            border: none;
            font-weight: 600;
            font-size: 1rem;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        }

        h4 {
            margin: 0;
        }
    </style>
</head>

<body>

<div class="card batch-card">

    <div class="card-header">
        ➕ Add New Batch
    </div>

    <div class="card-body">

        <form action="${pageContext.request.contextPath}/admin/addBatch"
              method="post"
              enctype="multipart/form-data">

            <!-- Batch Name -->
            <div class="mb-3">
                <label class="form-label fw-semibold">Batch Name</label>
                <input type="text"
                       name="batchName"
                       class="form-control"
                       placeholder="e.g. CH09ROM20"
                       required>
            </div>

            <!-- Start Date -->
            <div class="mb-3">
                <label class="form-label fw-semibold">Start Date</label>
                <input type="date"
                       name="startDate"
                       class="form-control"
                       required>
            </div>

            <!-- End Date -->
            <div class="mb-3">
                <label class="form-label fw-semibold">End Date</label>
                <input type="date"
                       name="endDate"
                       class="form-control"
                       required>
            </div>

            <!-- Batch Photo -->
            <div class="mb-4">
                <label class="form-label fw-semibold">Batch Photo</label>
                <input type="file"
                       name="photo"
                       class="form-control"
                       accept="image/*"
                       required>
            </div>

            <!-- Submit -->
            <button type="submit" class="btn btn-primary w-100">
                Save Batch
            </button>

        </form>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

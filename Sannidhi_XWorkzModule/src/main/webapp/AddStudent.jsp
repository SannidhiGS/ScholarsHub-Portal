<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>

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

        .student-card {
            width: 100%;
            max-width: 500px;
            border-radius: 20px;
            box-shadow: 0 16px 40px rgba(0,0,0,0.2);
            background-color: #fff;
            overflow: hidden;
        }

        .card-header {
            background: linear-gradient(90deg, #6a0dad, #4b0082);
            color: white;
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
        }

        input.form-control:focus, select.form-select:focus {
            box-shadow: 0 0 8px rgba(106, 13, 173, 0.3);
            border-color: #6a0dad;
        }

        .btn-success {
            background: linear-gradient(90deg, #28a745, #218838);
            border: none;
            font-weight: 600;
            font-size: 1rem;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .btn-success:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        }

        .text-danger {
            font-weight: 600;
            text-align: center;
        }

        h4 {
            margin: 0;
        }
    </style>
</head>

<body>

<div class="card student-card">
    <div class="card-header">
        👨‍🎓 Add Student
    </div>

    <div class="card-body">

        <!-- ✅ enctype IS MANDATORY -->
        <form action="${pageContext.request.contextPath}/admin/addStudent"
              method="post"
              enctype="multipart/form-data">

            <div class="mb-3">
                <label class="form-label">Student Name</label>
                <input type="text" name="name" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Phone</label>
                <input type="text" name="phone" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Select Batch</label>
                <select name="batchId" class="form-select" required>
                    <option value="">-- Select Batch --</option>
                    <c:forEach items="${batches}" var="b">
                        <option value="${b.id}">${b.batchName}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Upload Photo</label>
                <input type="file" name="photo" class="form-control" accept="image/*" required>
            </div>

            <c:if test="${empty batches}">
                <p class="text-danger">
                    No batches available. Please add a batch first.
                </p>
            </c:if>

            <button type="submit"
                    class="btn btn-success w-100"
                    ${empty batches ? "disabled" : ""}>
                Add Student
            </button>

        </form>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

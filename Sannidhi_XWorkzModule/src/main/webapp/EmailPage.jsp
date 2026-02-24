<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Send Email</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #e1e8f5, #f4f6fb);
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .card {
            border-radius: 20px;
            box-shadow: 0 12px 35px rgba(0,0,0,0.2);
            max-width: 500px;
            margin: 50px auto;
        }

        .card h4 {
            font-weight: 600;
            color: #0d6efd;
        }

        select.form-select, input.form-control, textarea.form-control {
            border-radius: 10px;
            border: 1px solid #ced4da;
            padding: 10px;
        }

        select.form-select:focus, input.form-control:focus, textarea.form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 5px rgba(13,110,253,0.3);
        }

        .btn-success {
            border-radius: 10px;
            font-weight: 600;
            background: linear-gradient(90deg, #198754, #146c43);
            border: none;
        }

        .btn-success:hover {
            background: linear-gradient(90deg, #146c43, #0f3b2b);
        }

        label {
            font-weight: 500;
        }
    </style>
</head>

<body>

<div class="card p-4 shadow">
    <h4 class="mb-4 text-center">📧 Send Email to Batch</h4>

    <form action="${pageContext.request.contextPath}/admin/sendEmail" method="post">

        <!-- Batch Dropdown -->
        <div class="mb-3">
            <label class="form-label">Select Batch</label>
            <select name="batchId" class="form-select" required>
                <option value="">-- Select Batch --</option>
                <c:forEach items="${batches}" var="b">
                    <option value="${b.id}">${b.batchName}</option>
                </c:forEach>
            </select>
        </div>

        <!-- Subject -->
        <div class="mb-3">
            <label class="form-label">Subject</label>
            <input type="text" name="subject" class="form-control" placeholder="Enter email subject" required>
        </div>

        <!-- Body -->
        <div class="mb-3">
            <label class="form-label">Message</label>
            <textarea name="body" rows="5" class="form-control" placeholder="Type your message here" required></textarea>
        </div>

        <button type="submit" class="btn btn-success w-100">Send Email</button>

    </form>
</div>

</body>
</html>

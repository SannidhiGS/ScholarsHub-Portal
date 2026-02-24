<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Students</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #f4f6fb, #e1e8f5);
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding: 40px 20px;
        }

        .student-card {
            max-width: 1000px;
            margin: auto;
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

        table thead {
            background-color: #6a0dad;
            color: white;
        }

        table tbody tr:hover {
            background-color: #f3e5f5;
        }

        .btn-edit {
            background: linear-gradient(90deg, #ffc107, #e0a800);
            color: white;
            border: none;
            font-weight: 600;
            margin-right: 5px;
        }

        .btn-edit:hover {
            background: linear-gradient(90deg, #e0a800, #d39e00);
            color: white;
        }

        .btn-delete {
            background: linear-gradient(90deg, #dc3545, #b02a37);
            color: white;
            border: none;
            font-weight: 600;
        }

        .btn-delete:hover {
            background: linear-gradient(90deg, #b02a37, #842029);
            color: white;
        }

        img.student-photo {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 50%;
        }

        .btn-back {
            background: linear-gradient(90deg, #6c757d, #495057);
            color: white;
            border: none;
            font-weight: 600;
        }

        .btn-back:hover {
            background: linear-gradient(90deg, #495057, #343a40);
            color: white;
        }
    </style>
</head>

<body>

<div class="card student-card">

    <div class="card-header">
        👨‍🎓 Students List
    </div>

    <div class="card-body p-4">

        <c:if test="${empty students}">
            <div class="alert alert-warning text-center">
                No students found in this batch.
            </div>
        </c:if>

        <c:if test="${not empty students}">
            <table class="table table-bordered table-hover align-middle text-center">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Photo</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${students}" var="s">
                        <tr>
                            <td>${s.id}</td>
                            <td>
                                <img src="${pageContext.request.contextPath}/student/photo/${s.id}"
                                     class="student-photo"
                                     alt="Student Photo"/>
                            </td>
                            <td>${s.name}</td>
                            <td>${s.email}</td>
                            <td>${s.phone}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin/editStudent?studentId=${s.id}"
                                   class="btn btn-edit btn-sm">
                                   Edit
                                </a>

                                <a href="${pageContext.request.contextPath}/admin/deleteStudent?studentId=${s.id}&batchId=${s.batch.id}"
                                   class="btn btn-delete btn-sm"
                                   onclick="return confirm('Are you sure you want to delete this student?');">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <a href="${pageContext.request.contextPath}/admin/viewBatches"
           class="btn btn-back mt-3">
            ← Back to Batches
        </a>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Batches</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #f4f6fb, #e1e8f5);
            min-height: 100vh;
            padding: 40px 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .batch-card {
            max-width: 950px;
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

        .table thead {
            background-color: #6a0dad;
            color: white;
        }

        .table tbody tr:hover {
            background-color: #f3e5f5;
        }

        .btn-view {
            background: linear-gradient(90deg, #198754, #146c43);
            color: white;
            border: none;
            font-weight: 600;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .btn-view:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.25);
        }

        img.batch-photo {
            width: 55px;
            height: 55px;
            border-radius: 50%;
            object-fit: cover;
        }

        .alert {
            font-weight: 500;
        }
    </style>
</head>

<body>

<div class="card batch-card">

    <!-- HEADER -->
    <div class="card-header">
        📋 Batch List
    </div>

    <!-- BODY -->
    <div class="card-body p-4">

        <c:if test="${empty batches}">
            <div class="alert alert-warning text-center">
                No batches found. Please add a batch.
            </div>
        </c:if>

        <c:if test="${not empty batches}">
            <table class="table table-bordered table-hover align-middle text-center">
                <thead>
                    <tr>
                        <th>Photo</th>
                        <th>ID</th>
                        <th>Batch Name</th>
                        <th>Students</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${batches}" var="b">
                        <tr>
                            <td>
                                <img src="${pageContext.request.contextPath}/batch/photo/${b.id}"
                                     class="batch-photo"
                                     alt="Batch Photo"/>
                            </td>
                            <td>${b.id}</td>
                            <td class="fw-semibold">${b.batchName}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin/viewStudents?batchId=${b.id}"
                                   class="btn btn-view btn-sm">
                                    View Students
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

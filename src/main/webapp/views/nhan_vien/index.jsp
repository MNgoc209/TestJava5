<%--
  Created by IntelliJ IDEA.
  User: ngocb
  Date: 13/03/2024
  Time: 12:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
<table class="table">
    <thead>
    <tr>
        <td>ID</td>
        <td>Tên nhân viên</td>
        <td>Mã</td>
        <td>Tên đăng nhập</td>
        <td>Mật khẩu</td>
        <td>Trạng thái</td>
        <td>Action</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${ data }" var="nv">
        <tr>
            <td>${nv.id}</td>
            <td>${nv.tenNV}</td>
            <td>${nv.maNV}</td>
            <td>${nv.tenDangNhap}</td>
            <td>${nv.matKhau}</td>
            <td>${nv.trangThai==1? "Đang làm việc":"Nghỉ việc"}</td>
            <td>
                <a href="/BTVN_B2_war_exploded/nhan-vien/edit?maNV=${nv.maNV}" class="btn btn-outline-success">Update</a>
                <a href="/BTVN_B2_war_exploded/nhan-vien/delete?maNV=${nv.maNV}" class="btn btn-outline-danger">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ngocb
  Date: 15/03/2024
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
<form method="post" action="/BTVN_B2_war_exploded/san-pham/update">
    <div>
        <label class="form-label">ID</label>
        <input type="text" name="id" class="form-control" value="${sp.id}">
    </div>

    <div>
        <label class="form-label">Mã</label>
        <input type="text" name="maSP" class="form-control" value="${sp.maSP}">
    </div>

    <div>
        <label class="form-label">Tên</label>
        <input type="text" name="tenSP" class="form-control" value="${sp.tenSP}">
    </div>

    <div>
        <label class="form-label">Trạng thái</label>
        <input type="radio" name="trangThai" value="1" checked class="form-radio" ${sp.trangThai == 1?"checked":""}>Còn hàng
        <input type="radio" name="trangThai" value="0" class="form-radio" ${sp.trangThai == 0?"checked":""}>Hết hàng
    </div>

    <div>
        <button class="btn btn-primary">Update</button>
    </div>
</form>
</body>
</html>
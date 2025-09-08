<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
    <title>Kết quả khảo sát</title>
    
</head>
<body>
    <h1>Cảm ơn bạn đã tham gia khảo sát!</h1>
    <p>Thông tin bạn đã nhập:</p>
    <ul>
        <li><strong>Email:</strong> ${user.email}</li>
        <li><strong>FirstName:</strong> ${user.firstName}</li>
        <li><strong>LastName:</strong> ${user.lastName}</li>
        <li><strong>Biết đến từ:</strong> ${user.heardFrom}</li>


        <!-- Chỉ hiển thị nếu người dùng chọn "Yes" cho cập nhật -->
        <c:if test="${user.wantsUpdates == 'Yes'}">
            <li><strong>ContactVia:</strong> ${user.contactVia}</li>
        </c:if>
    </ul>
</body>
</html>
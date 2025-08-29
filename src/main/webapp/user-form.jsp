<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form người dùng</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">
    <div class="bg-white p-8 rounded-lg shadow-lg max-w-md w-full">
        <h2 class="text-2xl font-bold text-gray-800 mb-6 text-center">${user != null ? 'Sửa người dùng' : 'Thêm mới người dùng'}</h2>
        <form action="${user != null ? 'edit' : 'add'}" method="post" class="space-y-4">
            <c:if test="${user != null}">
                <input type="hidden" name="id" value="${user.id}"/>
            </c:if>
            <div>
                <label class="block text-sm font-medium text-gray-700">Tên:</label>
                <input type="text" name="name" value="${user != null ? user.name : ''}" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"/>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Email:</label>
                <input type="email" name="email" value="${user != null ? user.email : ''}" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"/>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Quốc gia:</label>
                <input type="text" name="country" value="${user != null ? user.country : ''}" required class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"/>
            </div>
            <div class="text-center">
                <input type="submit" value="Submit" class="inline-block bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition duration-300 cursor-pointer"/>
            </div>
        </form>
    </div>
</body>
</html>
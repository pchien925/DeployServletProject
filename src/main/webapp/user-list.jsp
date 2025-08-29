<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách người dùng</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen py-8">
    <div class="max-w-4xl mx-auto bg-white p-8 rounded-lg shadow-lg">
        <h2 class="text-2xl font-bold text-gray-800 mb-6 text-center">Danh sách người dùng</h2>
        <div class="mb-4">
            <a href="add" class="inline-block bg-green-600 text-white px-4 py-2 rounded-lg hover:bg-green-700 transition duration-300">Thêm mới người dùng</a>
        </div>
        <div class="overflow-x-auto">
            <table class="w-full border-collapse">
                <thead>
                    <tr class="bg-gray-200">
                        <th class="border border-gray-300 px-4 py-2 text-left">ID</th>
                        <th class="border border-gray-300 px-4 py-2 text-left">Tên</th>
                        <th class="border border-gray-300 px-4 py-2 text-left">Email</th>
                        <th class="border border-gray-300 px-4 py-2 text-left">Quốc gia</th>
                        <th class="border border-gray-300 px-4 py-2 text-left">Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${listUser}">
                        <tr class="hover:bg-gray-50">
                            <td class="border border-gray-300 px-4 py-2">${user.id}</td>
                            <td class="border border-gray-300 px-4 py-2">${user.name}</td>
                            <td class="border border-gray-300 px-4 py-2">${user.email}</td>
                            <td class="border border-gray-300 px-4 py-2">${user.country}</td>
                            <td class="border border-gray-300 px-4 py-2">
                                <a href="edit?id=${user.id}" class="text-blue-600 hover:text-blue-800 mr-2">Sửa</a>
                                <a href="delete?id=${user.id}" onclick="return confirm('Bạn có chắc muốn xóa người dùng?')" class="text-red-600 hover:text-red-800">Xóa</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
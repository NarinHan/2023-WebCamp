<%--
  Created by IntelliJ IDEA.
  User: narinhan
  Date: 2023/01/18
  Time: 7:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Board</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylehseet" href="/css/board.css">
</head>
<body>
<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="/board" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
            <i class="fa-solid fa-house fa-2x me-3"></i>
            <span class="fs-4">게시판 예제</span>
        </a>
        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="add" class="nav-link px-2 link-secondary"><i class="fa-solid fa-pen px-2"></i>글쓰기</a></li>
            <li><a href="#" class="nav-link px-2 link-dark"><i class="fa-regular fa-square-c px-2"></i>C</a></li>
            <li><a href="#" class="nav-link px-2 link-dark"><i class="fa-regular fa-square-r px-2"></i>R</a></li>
            <li><a href="#" class="nav-link px-2 link-dark"><i class="fa-regular fa-square-u px-2"></i>U</a></li>
            <li><a href="#" class="nav-link px-2 link-dark"><i class="fa-regular fa-square-d px-2"></i>D</a></li>
        </ul>
    </header>
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>카테고리</th>
                    <th>제목</th>
                    <th>닉네임</th>
                    <th>내용</th>
                    <th>등록일</th>
                    <th>수정</th>
                    <th>삭제</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${boardList}" var="list">
                    <tr>
                        <td>${list.id}</td>
                        <td>${list.category}</td>
                        <td>${list.title}</td>
                        <td>${list.nickname}</td>
                        <td>${list.content}</td>
                        <td>${list.regDate}</td>
                        <td><a href="editform/${list.id}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                        <td><a href="javascript:confirmDelete('${list.id}')"><i class="fa-solid fa-trash"></i></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script>
    /** 삭제 확인 후 삭제 진행 **/
    function confirmDelete(id) {
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href = 'delete/' + id;
    }
</script>
</body>
</html>

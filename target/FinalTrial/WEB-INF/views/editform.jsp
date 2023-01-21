<%--
  Created by IntelliJ IDEA.
  User: narinhan
  Date: 2023/01/20
  Time: 9:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Edit Form</title>
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<div class="content">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-100">
                <div class="row justify-content-center">
                    <div class="col-md-6 py-3 pt-md-5 pb-md-4 mx-auto">
                        <h3 class="heading mb-4">수정하기</h3>
                        <form:form modelAttribute="edit" class="mb-5" action="../editconfirm" method="POST">
                            <form:hidden path="id"/>
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <label for="category" class="label text-muted">카테고리</label>
                                    <form:input path="category" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <label for="category" class="label text-muted">제목</label>
                                    <form:input path="title" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <label for="category" class="label text-muted">닉네임</label>
                                    <form:input path="nickname" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <label for="category" class="label text-muted">내용</label>
                                    <form:textarea cols="30" rows="7" path="content" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary rounded-0 py-2 px-4" onclick="editConfirm('${edit.status}')">수정하기</button>
                                    <button class="btn btn-warning rounded-0 py-2 px-4" onclick="history.back()">취소</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function editConfirm(status) {
        // if(status == 1) {
        //     alert("글이 수정되었습니다!");
        // } else {
        //     alert("오류 발생");
        // }
        alert("글이 수정되었습니다!");
    }
</script>
</body>
</html>
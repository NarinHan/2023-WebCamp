<%--
  Created by IntelliJ IDEA.
  User: narinhan
  Date: 2023/01/19
  Time: 10:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Form</title>
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
                        <h3 class="heading mb-4">새 글쓰기</h3>
                        <form class="mb-5" action="addconfirm" method="POST" name="addForm">
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <input type="text" class="form-control" name="category" placeholder="카테고리" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <input type="text" class="form-control" name="title" placeholder="제목" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <input type="text" class="form-control" name="nickname" placeholder="닉네임" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <textarea class="form-control" name="content" cols="30" rows="7" placeholder="내용을 입력하세요!" required></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary rounded-0 py-2 px-4" onclick="addConfirm('${addConfirm.status}')">등록하기</button>
                                    <button class="btn btn-secondary rounded-0 py-2 px-4" onclick="location.href='board'">목록보기</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function addConfirm(status) {
        // if(status == 1) {
        //     alert("글이 추가되었습니다!");
        // } else {
        //     alert("오류 발생");
        // }
        alert("글이 추가되었습니다!");
    }
</script>
</body>
</html>
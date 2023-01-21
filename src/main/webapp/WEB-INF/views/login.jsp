<%--
  Created by IntelliJ IDEA.
  User: narinhan
  Date: 2023/01/18
  Time: 7:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/css/login.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card border-0 shadow rounded-3 my-5">
                <div class="card-body p-4 p-sm-5">
                    <h5 class="card-title text-center mb-5 fw-light fs-5">Login</h5>
                    <form action="logincheck" method="POST">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="userid" name="userid" placeholder="UserID">
                            <label for="userid">User ID</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                            <label for="password">Password</label>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" value id="rememberPwd">
                            <label class="form-check-label" for="rememberPwd">Remember password</label>
                        </div>
                        <div class="d-grid">
                            <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Login</button>
                        </div>
                        <div class="d-grid">
                            <div class="text-center pt-4 text-muted">Don't have an account? <a href="javascript:signIn()">Sign In</a></div>
                            <hr class="my-4">
                        </div>
                    </form>
                    <div class="d-grid mb-2">
                        <a class="p-2" href="javascript:kakaoLogin()">
                            <img src="/img/kakao_login_large_narrow.png" id="kakao-login-image">
                        </a>
                    </div>
                    <div class="d-grid mb-2">
                        <button class="btn btn-google btn-login text-uppercase fw-bold">
                            <i class="fab fa-google me-2"></i>Sign in with Google
                        </button>
                    </div>
                    <div class="d-grid">
                        <button class="btn btn-facebook btn-login text-uppercase fw-bold">
                            <i class="fab fa-facebook-f me-2"></i>Sign in with Facebook
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jquery 라이브러리 : version 2.2.4 -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<%-- 카카오 로그인 API --%>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
    Kakao.init('95670047a19cc6c9cf4b7deb5b7870fc'); // 카카오 디벨로퍼스에서 발급받은 JavaScript Key
    function kakaoLogin() {
        window.Kakao.Auth.login({
            scope: 'account_email, profile_nickname', // 동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣으면 됨
            success: function(response) {
                console.log(response) // 로그인 성공하면 받아오는 데이터
                window.Kakao.API.request({ // 사용자 정보 가져오기
                    url: '/v2/user/me',
                    success: (res) => {
                        const kakao_account = res.kakao_account;
                        console.log(kakao_account)
                    }
                });
                window.location.href='http://localhost:8080/board' //리다이렉트 되는 코드
            },
            fail: function(error) {
                console.log(error);
            }
        });
    }
</script>
<script>
    /** 회원가입 페이지로 이동 **/
    function signIn() {
        location.href = "signinform";
    }
</script>
</body>
</html>
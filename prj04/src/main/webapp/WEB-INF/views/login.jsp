<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>


<style type="text/css">
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif; 
}

.hero-wrap {
  width: 100%;
  height: 880px;
  background-size: cover;
  background-repeat: no-repeat;
  display: flex;
  justify-content: center; 
  align-items: center;

  }

.login{
    margin: auto;
    width: 450px;
    height: 680px;
    background-color:#f9eed8;
    display: grid;
    justify-content: center; 
    border-radius: 10px;
}


.app-icon {
    width: 100%;
    height: 65px;
    margin-top: 60px;
    }


.login-form {
    text-align: left;
}

.login-form label {
    display: block;
    font-size: 14px;
    font-weight: bold;
    margin-bottom: 5px;
    color: #333;
}

.login-form input[type="email"],
.login-form input[type="password"] {
    width: 100%;
    padding: 12px 15px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
    font-size: 16px;
}

/* 로그인 유지 및 비밀번호 찾기 */
.options-row {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 5px;
    font-size: 13px;
}

.keep-login label {
    font-weight: normal;
    text-decoration: none;
}

.find-password {
    color: #007bff; /* 파란색 */
    text-decoration: none;
}

/* 메인 로그인 버튼 */
.login-button {
    width: 100%;
    padding: 12px;
    background-image: url("images/login/loginbar.png");
    background-repeat: no-repeat;
    background-size: cover;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    margin-bottom: 20px;
    margin-top: 20px;
}

.login-button:hover {
    background-color: #0056b3;
}

/* 소셜 로그인 버튼 */
.social-login button {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    padding: 12px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 6px;
    font-size: 15px;
    cursor: pointer;
    background-color: #f7f7f7;
    color: #333;
}

.social-login img {
    width: 20px;
    height: 20px;
    margin-right: 10px;
}


.social-button.facebook {
    background-color:#6285cc;
}

.social-button.kakao {
    background-color: #fee500;
}

/* 회원가입 프롬프트 */
.signup-prompt {
    margin-top: 30px;
    font-size: 13px;
    color: #666;
}

.signup-link {
    color: #007bff; 
    font-weight: bold;
    text-decoration: none;
    margin-left: 5px;
}

</style>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <div class="hero-wrap" style="background-image: url('images/login/login.png');" data-stellar-background-ratio="0.5">
      <div class="login">
            <div class="logo-section">
            <a href="#"><img src="images/login/로고글씨2.png" alt="여행 아이콘" class="app-icon"></a>
         </div>

         <form class="login-form" method="post">
            
            <label for="email">이메일</label>
            <input type="email" id="email" placeholder="" required>

            <label for="password">비밀번호</label>
            <input type="password" id="password" placeholder="" required>
            
            <div class="options-row">
               <div class="keep-login">
                  <label>
                            <input type="checkbox" id="keep-login"> 로그인 유지
                        </label>
               </div>
               <a href="#" class="find-password">비밀번호 찾기</a>
            </div>

            <button type="submit" class="login-button">로그인</button>
         </form>

         <div class="social-login">
            <button class="social-button google">
                <img src="images/login/구글.png" alt="Google 아이콘">
               google로 계속하기
            </button>
            <button class="social-button facebook">
               <img src="images/login/페북.png" alt="Facebook 아이콘">
               facebook으로 계속하기
            </button>
            <button class="social-button kakao">
               <img src="images/login/카카오.png" alt="Kakao 아이콘">
               Kakao로 계속하기
            </button>
         </div>

         <div class="signup-prompt">
            아직 계정이 없으신가요? 
            <a href="${pageContext.request.contextPath}/Join" class="signup-link">회원가입</a>
         </div>

      </div>
    </div>
</body>
</html>
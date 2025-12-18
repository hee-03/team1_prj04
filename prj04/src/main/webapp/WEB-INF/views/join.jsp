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
    text-align: center;
}


.app-icon {
    width: 74%;
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
.login-form input[type="tel"],
.login-form input[type="text"],
.login-form input[type="password"] {
    width: 100%;
    padding: 12px 15px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 6px;
    font-size: 16px;
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



</style>
<script type="text/javascript">
   $(document).ready(function(){
         let mem2 = "${mem2}" 
         if(mem2 !=""){
            if(confirm(mem2+"\n조회화면으로 이동하시겠습니까?")){
               location.href="login"
            }
         }
         $("#lstBtn").click(function(){
            location.href="login"
        });
   });
</script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
</head>
<body>
    <div class="hero-wrap" style="background-image: url('images/login/login.png');" data-stellar-background-ratio="0.5">
      <div class="login">
            <div class="logo-section">
            <a href="#"><img src="images/login/로고글씨2.png" alt="여행 아이콘" class="app-icon"></a>
         </div>

         <form class="login-form" method="post">
            
            <label for="email">이메일</label>
            <input type="email" name="email" placeholder="e-mail" required>

            <label for="password">전화번호</label>
            <input type="tel" name="phoneNum" placeholder="phone number" required>
            
            <label for="password">이름</label>
            <input type="text" name="name" placeholder="name" required>
            
            <label for="password">비밀번호</label>
            <input type="password" name="pwd" placeholder="password" required>
            
            <label for="password">비밀번호확인</label>
            <input type="password" id="pwd2" placeholder="password" required>
            
            <button type="submit" id="lstBtn" class="login-button">회원가입</button>
         </form>

      </div>
    </div>
  
</body>
</html>
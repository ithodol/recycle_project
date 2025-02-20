<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 챌린지</title>
   <!-- Title 이미지 -->
   <link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">
</head>
<body>

   <jsp:include page="header.jsp"></jsp:include>

   <!-- 본문 -->
   <div id="layoutnav">
      <div class="view_content content">
            <div class="content_title">
                  <h1>랭킹</h1>
                  
            </div>
            <div class="tablebox container"> <!-- container -->
            <table class="table boardlist" style="text-align: center;">
               <thead>
                  <tr>
                     <th style="width: 15%">순위</th>
                     <th style="width: 30%">이름</th>
                     <th style="width: 25%">닉네임</th>
                     <th style="width: 20%">포인트</th>
                  
                  </tr>
               </thead>
      
               <tbody>
               </tbody>
            </table>
         </div>
         
                     
      </div>   
   </div>
   
   <jsp:include page="footer.jsp"></jsp:include>

   <!-- JQuery -->
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
   <!-- js -->
   <script src="/recycle_project/js/member/topmember.js"></script>

</body>
</html>
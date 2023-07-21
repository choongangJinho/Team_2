<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>




<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
  <div class="container">
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="<%=request.getContextPath() %>/index2.jsp">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">공지사항</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPolitics" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            정치
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownPolitics">
            <a class="dropdown-item" href="#">Link 1</a>
            <a class="dropdown-item" href="#">Link 2</a>
            <a class="dropdown-item" href="#">Link 3</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownWhisky" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            위스키
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownWhisky">
            <a class="dropdown-item" href="#">Link 1</a>
            <a class="dropdown-item" href="#">Link 2</a>
            <a class="dropdown-item" href="#">Link 3</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownAnimal" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            동물
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownAnimal">
            <a class="dropdown-item" href="#">Link 1</a>
            <a class="dropdown-item" href="#">Link 2</a>
            <a class="dropdown-item" href="#">Link 3</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownUsedItems" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            중고거래
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownUsedItems">
            <a class="dropdown-item" href="#">Link 1</a>
            <a class="dropdown-item" href="http://localhost/view/trsSell/trsList_sell.jsp">Link 2</a>
            <a class="dropdown-item" href="#">Link 3</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBoard1" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            회창
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownBoard1">
            <a class="dropdown-item" href="<%=request.getContextPath() %>/hwet/article/list.do">게시판</a>
            <a class="dropdown-item" href="#">Link 2</a>
            <a class="dropdown-item" href="#">Link 3</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMovie" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            영화
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMovie">
            <a class="dropdown-item" href="#">Link 1</a>
            <a class="dropdown-item" href="#">Link 2</a>
            <a class="dropdown-item" href="#">Link 3</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBoard2" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            경탁
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownBoard2">
            <a class="dropdown-item" href="#">Link 1</a>
            <a class="dropdown-item" href="#">Link 2</a>
            <a class="dropdown-item" href="#">Link 3</a>
          </div>
        </li>
      </ul>
      <ul class="navbar-nav">
      	<c:if test="${empty AUTH_USER}">
	        <li class="nav-item">
	          <a class="nav-link" href="<%=request.getContextPath() %>/join.do">회원가입</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="<%=request.getContextPath() %>/loginForm.do">로그인</a>
	        </li>
        </c:if>
        <c:if test="${!empty AUTH_USER}">
	        <li class="nav-item">
	          <a class="nav-link" href="<%=request.getContextPath() %>/logout.do">로그아웃</a>
	        </li>
        </c:if>
      </ul>
      
    </div>
  </div>
</nav>
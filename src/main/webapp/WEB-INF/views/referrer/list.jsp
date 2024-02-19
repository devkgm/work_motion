<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<form class="row g-3">
			<div class="col-auto">
				<select name=kind class="form-select"
					aria-label="Default select example">
					<option value="kind2">제목</option>
					<option value="kind1">작성자</option>					
				</select>
			</div>
			<div class="col-auto">
				<label for="search" class="visually-hidden">Search</label>
				<input type="text" name="search" class="form-control" id="search" placeholder="search">
			</div>		
		</form>
	</div>

<table class="table table-dark table-hover">
  <thead>
  	<tr>
  		<td>서류번호</td>
  		<td>작성자</td>
  		<td>제목</td>
  		<td>작성일</td>  		
  	</tr>
  </thead>
  <c:forEach items="${list}" var="dto">
  	<tr>
  		<td>${dto.documentDTO.id}</td>
  		<td>${dto.memberDTO.name}</td>
  		<td><a href="">${dto.documentDTO.title}</a></td>
  		<td>${dto.documentDTO.create_dt}</td>
  	</tr>
  </c:forEach>  
</table>

	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	  	<c:if test="${!pager.start}">
	    <li class="page-item">
	      <a class="page-link" href="./list?page=${pager.startNum-1}&search=${pager.search}&kind=${pager.kind}" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    </c:if>
	    
	    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	    		<li class="page-item"><a class="page-link" href="./list?page=${i}&search=${pager.search}&kind=${pager.kind}">${i}</a></li>
	    </c:forEach>
	    
	    <c:if test="${!pager.last}">
	    <li class="page-item">
	      <a class="page-link" href="./list?page=${pager.lastNum+1}&search=${pager.search}&kind=${pager.kind}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	    </c:if>
	  </ul>
	</nav>
	
	





</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table">
	<thead>
		<tr>
			<th scope="col">게시판번호</th>
			<th scope="col">게시판제목</th>
			<th scope="col">게시판조회수</th>
			<th scope="col">게시판개설일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="dto">
		<tr>
		<td>${dto.ID}</td>
		<td><a href="./detail?id=${dto.ID}">${dto.TITLE}</a></td>
		<td>${dto.VIEWS}</td>
		<td>${dto.CREATE_DT}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<c:if test="${pager.lastNum > 1}">
	<nav aria-label="...">
		<ul class="pagination">

			<!-- 이전@@@@@@@@@@ -->
			<c:if test="${!pager.start} ">
				<li class="page-item"><a class="page-link"
					href="./departmentList?page=${pager.startNum-1}&search=${pager.search}">Previous</a></li>
			</c:if>

			<!-- 번호@@@@@@@@@@@@ -->
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<li class="page-item"><a class="page-link"
					href="./departmentList?page=${i}&search=${pager.search}">${i}</a></li>
			</c:forEach>
			<!-- 다음@@@@@@@@@@@@@@@ -->

			<c:if test="${!pager.last}">
				<li class="page-item"><a class="page-link"
					href="./departmentList?page=${pager.lastNum+1}&search=${pager.search}">Next</a></li>
			</c:if>
		</ul>
	</nav>
</c:if>

<!-- 검색부분@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<form action="./departmentList">
	<div class="input-group mb-3">
		<input type="text" class="form-control" name="search"
			aria-label="Text input with dropdown button">
		<button class="btn btn-outline-secondary" type="submit">찾기</button>
	</div>
</form>
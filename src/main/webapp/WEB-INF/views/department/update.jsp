<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form action="./update" method="post">
	<div class="mb-3">
		<label for="name" class="form-label">부서이름</label> <input name="name"
			type="text" class="form-control" id="name">
	</div>
	<input type="hidden" name="id" value="${update.id}">
	<div class="mb-3">
		<label for="phone_num" class="form-label">부서전화번호</label> <input name="phone_num"
			type="text" class="form-control" id="phone_num">
	</div>
	<button type="submit" class="btn btn-primary">부서수정하기</button>
</form>
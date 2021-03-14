<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
.bg_community {
	height: 250px;
	width: 100%;
	background-size: cover;
	background-image: url("../images/bg.jpg");
}

.container {
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
<body>
	<%@ include file="../layout/header.jsp"%>

	<div class="bg_img">
		<img class="bg_community" />
	</div>

	<div class="container">
		<form action="/blog/board?cmd=save" method="POST">
			<input type="hidden" name="userId"
				value="${sessionScope.principal.id}" />

			<div class="form-group">
				<input type="text" class="form-control" placeholder="제목" id="title"
					name="title">
			</div>

			<div class="form-group">
				<textarea class="form-control" id="summernote" rows="5" id="content"
					name="content"></textarea>
			</div>

			<button type="submit" class="btn btn-primary">글쓰기 등록</button>
		</form>
	</div>


	<%@ include file="../layout/footer.jsp"%>

	<script>
		$('#summernote').summernote({
			placeholder : '글을 쓰세요.',
			tabsize : 2,
			height : 400
		});
	</script>
</body>
</html>
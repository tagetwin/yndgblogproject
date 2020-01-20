<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<title>Document</title>
<style>
.height {
	min-height: 100vh;
}
</style>
</head>

<body>
	<!-- navbar -->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<!-- Brand -->
		<a class="navbar-brand" href="/yp">Navbar</a>
		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			</ul>
			<div class="ml-auto">
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-backdrop="static">회원가입</button>
			</div>
		</div>
	</nav>
	<!-- navbar end -->
	<section class="bg-light">
		<div class="container">
			<div class="row height align-items-center d-flex justify-content-center">
				<div class="col-md-8">
					<form class="form-group d-flex ">
						<div class="col-md-9 col-lg-12">
							<input type="text" class="form-control form-control-lg mr-sm-2" placeholder="게임제목으로 검색하세요" />
						</div>
						<div class="col-md-3">
							<button id="search" type="submit" class="btn btn-primary btn-lg disabled">검색</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<section class="bg-dark">
		<div class="container-fluid">
			<h1 class="text-center">인기제품</h1>
			<div class="row height align-items-center d-flex justify-content-around">

				<div class="col-md-4">
					<img src="images/dargonball.png">
					<p class="text-muted lead my-4 mx-auto">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit reprehenderit tempora blanditiis libero. Earum tempora consequuntur nisi, praesentium
						provident optio! ipsum dolor sit amet onsectetur dipisicing elit. Dolor, beatae!</p>
				</div>
				<div class="col-md-4">
					<img src="images/pubg.png">
					<p class="text-muted lead my-4 mx-auto">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit reprehenderit tempora blanditiis libero. Earum tempora consequuntur nisi, praesentium
						provident optio! ipsum dolor sit amet onsectetur dipisicing elit. Dolor, beatae!</p>
				</div>
				<div class="col-md-4">
					<img src="images/iceborne.png">
					<p class="text-muted lead my-4 mx-auto">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit reprehenderit tempora blanditiis libero. Earum tempora consequuntur nisi, praesentium
						provident optio! ipsum dolor sit amet onsectetur dipisicing elit. Dolor, beatae!</p>
				</div>
			</div>
		</div>
	</section>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="/yp/user?cmd=joinProc" method="POST">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">아이디</label> <input type="text" class="form-control" id="username" name="username" />
						</div>
						<div class="form-group">
							<label for="password" class="col-form-label">비밀번호</label> <input type="password" class="form-control" id="password" name="password" />
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-primary">가입 신청하기</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

	<script>


  </script>

</body>


</html>


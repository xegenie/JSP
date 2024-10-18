<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글 수정</title>
<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="static/css/reset.css">
<link rel="stylesheet" href="static/css/style.css">


<script src="js/jquery-3.7.1.min.js"></script>
<script src="js/update.js"></script>
</head>

<body>
	<input type="checkbox" name="bars" id="bars">

	<!-- 플로팅 버튼 -->
	<div class="floating">
		<a href="#top"><i class="fa fa-arrow-circle-up"></i></a>
	</div>

	<!-- 헤더 -->
	<header>
		<!-- util -->
		<div class="util">
			<ul class="util-menu">
				<li><a href="login.html">로그인</a></li>
				<li><a href="">회원가입</a></li>
			</ul>
		</div>
		<!-- menu -->
		<div class="menu">
			<div class="menu-left">
				<a href=""><i class="fa fa-user"></i></a>
			</div>
			<div class="menu-center">
				<nav class="pc">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="board/list.jsp">Board</a></li>
						<li><a href="gallery.html">Gallery</a></li>
						<li><a href="about.html">About</a></li>
					</ul>
				</nav>
			</div>
			<div class="menu-right">
				<a href="javascript:;"> <label for="bars" class="bars">
						<span class="bar top"></span> <span class="bar mid"></span> <span
						class="bar bottom"></span>
				</label>
				</a>
			</div>
		</div>
	</header>

	<!-- 사이드바 -->
	<div class="sidebar">
		<ul class="sidemenu">
			<li><a href="">
					<h3>사이드바 메뉴</h3>
					<p>사이드바 메뉴 설명</p>
			</a></li>
			<li><a href="">
					<h3>사이드바 메뉴</h3>
					<p>사이드바 메뉴 설명</p>
			</a></li>
			<li><a href="">
					<h3>사이드바 메뉴</h3>
					<p>사이드바 메뉴 설명</p>
			</a></li>
			<li><a href="">
					<h3>사이드바 메뉴</h3>
					<p>사이드바 메뉴 설명</p>
			</a></li>
		</ul>
	</div>

	<!-- 메인 -->
	<div class="container">
		<section>
			<div class="title-box">
				<h1 class="main-title">글수정</h1>
				<div class="item">
					<a href="javascript: ;" class="btn" onclick="update()">수정</a> <a
						href="javascript: ;" class="btn" onclick="remove()">삭제</a>
				</div>
			</div>
			<div class="input-group">
				<label for="title">제목</label> <input type="text" name="title"
					placeholder="제목을 입력하세요." id="title"></input>
			</div>
			<div class="input-group">
				<label for="title">작성자</label> <input type="text" name="writer"
					placeholder="작성자를 입력하세요." id="writer"></input>
			</div>
			<div class="input-group">
				<textarea name="content" id="content" cols="30" rows="10"></textarea>
			</div>
		</section>
	</div>



	<!-- 푸터 : 사이트맵 + 패밀리사이트, 카피라이트 -->
	<footer>
		<div class="footer-menu">
			<div class="site-map">
				<div class="item">
					<ul>
						<li>Board</li>
						<li>공지사항</li>
						<li>자유 게시판</li>
					</ul>
				</div>
				<div class="item">
					<ul>
						<li>Gallery</li>
						<li>취미 갤러리</li>
						<li>자유 갤러리</li>
					</ul>
				</div>
				<div class="item">
					<ul>
						<li>About</li>
						<li>사이트 소개</li>
					</ul>
				</div>
			</div>
			<div class="family-site">
				<select name="site" id="site">
					<option value="1">카카오</option>
					<option value="2">네이버</option>
					<option value="3">구글</option>
				</select>
			</div>
		</div>
		<div class="copy">
			<p>Copyright ⓒ ALOHA CLASS. ALL Rights Reserved</p>
		</div>
	</footer>
</body>

</html>
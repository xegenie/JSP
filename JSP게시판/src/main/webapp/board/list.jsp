<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판</title>
<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/style.css">

<script src="js/jquery-3.7.1.min.js"></script>
<script src="js/list.js"></script>
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
						<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
						<li><a href="<%=request.getContextPath()%>/list.jsp">Board</a></li>
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
				<h1 class="main-title">게시판</h1>
				<a href="<%=request.getContextPath()%>/insert.jsp" class="btn">글쓰기</a>

			</div>

			<div class="search-filter">
				<!-- 검색UI -->
				<div class="item">
					<form action="/borad" method="get">
						<select name="category" id="category" class="filter-select">
							<option value="0">전체</option>
							<option value="1">제목+내용</option>
							<option value="2">제목</option>
							<option value="3">작성자</option>
							<option value="4">내용</option>
						</select> <input type="text" placeholder="검색어를 입력하세요." class="search-input">
						<input type="submit" class="search-button" value="검색">
					</form>
				</div>

				<!-- 필터 -->
				<div class="item">
					<select name="rows" id="rows" class="filter-select">
						<option value="5">5개씩</option>
						<option value="10">10개씩</option>
						<option value="20">20개씩</option>
						<option value="30">30개씩</option>
						<option value="40">40개씩</option>
						<option value="50">50개씩</option>
					</select>
				</div>
			</div>

			<!-- 게시글 목록 -->
			<table class="board-list">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody id="board-list">

				</tbody>
			</table>
			<!-- 페이지네이션 -->
			<div class="pagenation">
				<!-- ≪ ＜ ＞ ≫ -->
				<a href="" class="page-link">≪</a> <a href="" class="page-link">＜</a>
				<a href="" class="page-link selected">1</a> <a href=""
					class="page-link">2</a> <a href="" class="page-link">3</a> <a
					href="" class="page-link">4</a> <a href="" class="page-link">5</a>
				<a href="" class="page-link">＞</a> <a href="" class="page-link">≫</a>
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
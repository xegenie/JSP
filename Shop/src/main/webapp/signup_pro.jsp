<%@page import="shop.Service.UserServiceImpl"%>
<%@page import="shop.Service.UserService"%>
<%@page import="shop.DTO.Users"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	// User 객체 생성
	Users user = Users.builder()
					  .username(username)
					  .password(password)
					  .name(name)
					  .email(email)
					  .enabled(true)
					  .build();
	
	// 회원가입 요청
	UserService userService = new UserServiceImpl();
	int result = userService.signup(user);
	// 회원가입 성공
	if (result > 0) {
		response.sendRedirect("index.jsp");
		out.println("SUCCESS");
	}
	// 회원가입 실패
	else {
		response.sendRedirect("signup.jsp?error=0");
	}
%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img{
background: url("img/book.jpg");
height: 50vh;
width: 100%;
background-size: cover;
background-repeat: no-repeat;
}

.crd-ho:hover {}
background-color: #fcf7f7;
</style>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp"%>
<div class="container-fluid back-img">
<h2 class="text-center text-danger">EBook Management System</h2>
</div>

<% Connection conn = DBConnect.getConnection();
	out.println(conn);
%>

<!-- start recent book -->
<div class="container">
<h3 class="text-center">Recent Book</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/one.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>One Piece</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/doraemon.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Doraemon Special</p>
<p>Fujiko F Fujio</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/shin.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Crayon Shin-chan</p>
<p>Yoshito Usui</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan1.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>
</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>
<!-- end recent book -->
<hr>
<!-- start new book -->
<div class="container">
<h3 class="text-center">New Book</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan - Toru Amuro (Special Collection)</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan - Toru Amuro (Special Collection)</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan - Toru Amuro (Special Collection)</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan - Toru Amuro (Special Collection)</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>
</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>
<!-- end new book -->
<hr>
<!-- start old book -->
<div class="container">
<h3 class="text-center">Old Book</h3>
<div class="row">
<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan - Toru Amuro (Special Collection)</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan - Toru Amuro (Special Collection)</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan - Toru Amuro (Special Collection)</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/conan.jpg" style="width: 150px; height: 200px" class="img-thumblin">
<p>Detective Conan - Toru Amuro (Special Collection)</p>
<p>Gosho Aoyama</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>
</div>
</div>
</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View All</a>
</div>
</div>
<!-- end old book -->

<%@include file="all_component/footer.jsp"%>
</body>
</html>
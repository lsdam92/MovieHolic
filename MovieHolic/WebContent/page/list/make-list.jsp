<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/template/header.jsp" %>
<%@ include file="/template/boot_431.jsp" %>
<%@ include file="/template/nav.jsp" %>

		<!-- Main -->
		<div class="wrapper style1">

			<div class="container bgcolor-yellow">
				<div class="row">
				<div class = "col-lg-1"></div>
					<div class="col-lg-5" id="list-search">
						<div class="col-lg-10">
							<h3>
								<label>YOUR LIST</label>
							</h3>
							<input type="text" class="form-control form-control-lg"
								placeholder="당신의  추천 리스트 이름을 입력하세요" name="list-name">
						</div>
						<br>
						<div class="col-lg-10">
							<h3>
								<label>#HASHTAG</label>
							</h3>
							<input type="text" class="form-control form-control-lg"
								placeholder="원하는 HASHTAG를 입력하세요" name="hashtag">
								<font color = "gray">최대 10개의 HASHTAG를 입력하실 수 있습니다.</font>
						</div>
						<br>
						<div class = "col-lg-10">		
								<h3><label for = "title_search">TITLE OF MOVIE</label></h3>
							<input type="text" class="form-control form-control-lg" placeholder="영화 제목을 입력해주세요" name="title-search">
					</div>
					</div>
					<br>
					<div class="col-lg-5" id="list-description">
						<h3>
							<label for="list-detail-description">ABOUT YOUR FAVORITE MOVIE</label>
						</h3>
						<textarea class="form-control" rows="9" cols="80" style="resize : none;"
							id="list-detail-description" placeholder = "감명있게 본 MOVIE LIST에 대해 이야기해주세요">
						</textarea><br>
						<button type="button" class="btn btn-secondary float-right">CANCEL</button>
						<button type="button" class="btn btn-primary float-right">SAVE</button>
					</div>
				</div>
				<br><br>
				<div class = "row">
				<div class="col-lg-1"></div>
				<div class="col-lg-10" id="poster-list">
			<h3><label>YOUR MOVIE LIST</label></h3>
			<div class="list-group">
			<ul class="list-group list-group-horizontal">
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임
					  <button style ="size : 10px;">x</button></li>
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임</li>
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임</li>
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임</li>
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임</li>
			</ul>
			<ul class="list-group list-group-horizontal">
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임</li>
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임</li>
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임</li>
					  <li class="list-group-item"><img src = "/MovieHolic/images/avengers.png"><br>엔드게임</li>
					</ul>
  			<!-- <a href="#" class="list-group-item list-group-item-action">엔드게임</a>
			<a href="#" class="list-group-item list-group-item-action">인피니티 워</a>
  			<a href="#" class="list-group-item list-group-item-action">토르</a> -->
			</div>
				</div>
				</div>
			</div>
		</div>

<%@ include file="/template/footer.jsp" %>
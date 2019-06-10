<%@page import="com.kitri.dto.mypage.PageBean"%>
<%@page import="com.kitri.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/template/header.jsp"%>
<%@ include file="/template/nav_style.jsp"%>
<%@ include file="/template/boot_431.jsp"%>
<style>
<%--
체크박스 --%> .form-check-input {
	-ms-transform: scale(2); /* IE */
	-moz-transform: scale(2); /* FF */
	-webkit-transform: scale(2); /* Safari and Chrome */
	-o-transform: scale(2); /* Opera */
	position: relative;
	margin: 3em 2em 2em;
}

<%--
영화제목 --%> .title {
	font-size: 18px;
}

<%--
별모양 --%> .fas {
	font-style: normal;
	font-family: FontAwesome;
	font-size: 2.5em;
}

<%--
모바일사이즈에서

 

이미지


&
별점

 

숨기기

 

--%>
@media screen and (max-width: 990px) {
	.hide1 {
		display: none;
	}
	.fas {
		font-size: 1.8em;
	}
}

@media screen and (max-width: 765px) {
	.hide2 {
		display: none;
	}
	s
	
	
	

}
</style>

<script>
	
<%-- new review 클릭시 페이지 이동 --%>
	$(function() {
		$("#newReview").click(function() {
			location.href = '/MovieHolic/page/mypage/writereview.jsp';
		});
	});
</script>
</head>
<body class="left-sidebar is-preload">
	<script>
		$(function() {
			var $aObj = $("table>tr>td>span>a");
			$aObj.click(function() {
				var url = $(this).attr("href");
				$.ajax({
					url : url,
					method : 'get',
					success : function(result) {
						$("div.wrapper style1").html(result);
					}
				});
				return false;
			});
		});
		$("div>div#pagegroup>ul>li>a").click(function(){
			var currentPage=$(this).attr("href");
				alert(currentPage+"페이지를 보여줍니다.");
			$.ajax({
				url:'/MovieHolic/mypage?page=diary&'+ currentPage,
				method:'get',
				data:'page=diary&'+currentPage,
				success:function(result){
					$("tbody").html(result.trim());
				}
			});
			return false;
		});
	</script>
	<%--List<BoardDto> list = (List<BoardDto>)request.getAttribute("reviewList");--%>
	<%
		PageBean pb = (PageBean) request.getAttribute("reviewList");
		List<BoardDto> list = pb.getBoard();
		int size = list.size(); //한 페이지 내에 보여줄 실제 행 개수

		int currentPage = pb.getCurrentPage(); // 현재 페이지 index
		int startPage = pb.getStartPage(); // 시작 페이지 index
		int endPage = pb.getEndPage(); // 끝 페이지 index

		int cntPerPage = pb.getCntPerPage(); // 한 페이지 내에 보여줄 최대 행 개수
		int totalPage = pb.getTotalPage(); // 모든 페이지 개수
		int cntPerPageGroup = pb.getCntPerPageGroup(); // 페이지 그룹 개수
	%>
	<div id="page-wrapper">
		<%-- Header --%>
		<div id="header"
			style="background-image: none; margin-bottom: 0px; padding-bottom: 0; height: 10px;">
			<%@ include file="/template/nav.jsp"%>
		</div>


		<%-- Main --%>
		<div class="wrapper style1">

			<div class="container">

				<%-- 페이지 이동경로 --%>
				<div class="row" style="margin-bottom: 30px;">
					<div class="col-lg-12 col-12-mobile font_light_small">
						<span>✱&nbsp;&nbsp;</span> <a
							href="/MovieHolic/page/mypage/mypage.jsp" style="color: white;">My
							Page</a> <span>&nbsp;&nbsp;❱❱&nbsp;&nbsp;</span> <a
							href="/MovieHolic/page/mypage/diary.jsp" class="font_bold_small">Diary</a>
					</div>
				</div>

				<div class="font_bold_mid"
					style="width: 100%; border-bottom: 2.5px solid #fff; margin-bottom: 0; padding-bottom: 0.8em;">
					<button class="btn btn-success font_bold_small"
						style="float: right; width: 120px;" id="newReview">New
						Review</button>
					<div style="float: left;">나의 리뷰</div>
					<div style="clear: both;"></div>
				</div>

				<div class="row" style="margin-top: 0;">
					<div class="col-lg-12 col-12-mobile">
						<div style="float: left">
							<button class="btn btn-success font_bold_small">삭&nbsp;&nbsp;&nbsp;제</button>
						</div>
						<div style="float: right">
							<button class="btn btn-success font_bold_small">검&nbsp;&nbsp;&nbsp;색</button>
						</div>
						<div style="float: right; width: 20px; height: 1px;"></div>
						<div style="float: right">
							<input type="text" class="form-control">
						</div>
						<%-- float clear용 빈 div --%>
						<div style="clear: both;"></div>
					</div>
					<div class="col-12" style="margin-bottom: 3em;">
						<table class="table table-hover"
							style="text-align: center; margin-top: 1em;">
							<thead>
								<tr class="font_light_small">
									<th style="width: 5%;"></th>
									<th style="width: 13%; text-align: center;" class="hide1">영화</th>
									<th style="width: 14%;; text-align: center;">작성일</th>
									<th style="width: 34%; text-align: center;" class="hide2">별점</th>
									<th style="text-align: center;">영화제목</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (int i = 0; i < size; i++) {
								%>
								<tr>
									<td style="vertical-align: middle;"><input type="checkbox"
										class="form-check-input"></td>
									<td class="hide1" style="vertical-align: middle;"><a
										href="/MovieHolic/page/film/moviedetail.jsp"><img
											width="90vh" src="/MovieHolic/images/tempimg/coco.jpg"
											title="코코 (2017)" /></a></td>
									<td style="vertical-align: middle;">
										<div class="font_light_small"><%=list.get(i).getPostDateY()%></div>
										<div class="font_bold_mid" style="font-size: 2em;"><%=list.get(i).getPostDateM()%></div>
									</td>
									<td class="hide2" style="vertical-align: middle;"><span
										style="font-size: 1em;"> <%
										 	for (int j = 0; j <list.get(j).getStarPoint(); j++) {
										 %> <i class="fas fa-star" style="color: #ffca08;"></i> <%
										 	}
										 %> <%
										 	for (int a = 0; a< 5-list.get(a).getStarPoint(); a++) {
										 %> <i class="fas fa-star" style="color: #222222;"></i> <%
										 	}
										 %>
									</span></td>
									<td class="font_bold_mid" style="vertical-align: middle;"><span
										class="title"><a
											href="/MovieHolic/mypage?page=reviewdetail&seq=<%=list.get(i).getSeq()%>"><%=list.get(i).getMovieName()%></a></span></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
					<div class="col-12" id="pagegroup">
						<div style="float: left">
							<%
								if (startPage != 1) {
							%>
							<button class="btn btn-success font_bold_small"
								data-page="<%=startPage - 1%>">이&nbsp;&nbsp;&nbsp;전</button>
							<%
								}
							%>
						</div>
						<div style="float: right;">
							<%
								if (endPage != totalPage) {
							%>
							<button class="btn btn-success font_bold_small"
								data-page="<%=endPage + 1%>">다&nbsp;&nbsp;&nbsp;음</button>
							<%
								}
							%>
						</div>
						<ul class="pagination justify-content-center">
							<%
								// 페이지 그룹 개수(5)만큼 반복
								for (int i = 0; i < cntPerPageGroup; i++) {
									// 마지막 페이지에서, 
									if (startPage + i <= totalPage) {
							%>
							<li class="page-item"><a class="page-link a"
								href="/MovieHolic/mypage?page=diary&<%=startPage + i%>"><%=startPage + i%></a></li>
							<%
								}
								}
							%>
						</ul>
						<%-- float clear용 빈 div --%>
						<div style="clear: both;"></div>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="/template/footer.jsp"%>
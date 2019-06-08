<%@page import="com.kitri.dto.mypage.PageBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="followings" class="container tab-pane active" role = "tabpanel">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
							<br>
								<table class="table table-hover table-dark">
								  <thead>
								    <tr>
								      <th scope="col">no.</th>
								      <th scope="col">ID</th>
								      <th scope="col">Name</th>
								      <th scope="col">Lists</th>
								      <th scope="col">Likes</th>
								      <th scope="col"></th>
								    </tr>
								  </thead>
								  <tbody>
								<%PageBean pb = (PageBean)request.getAttribute("pb");
									System.out.println(pb);
								%>						  
						
								<c:set var = "pb" value="${requestScope.pb}"/>
								  
								  <%--social following page 위한 for문 --%>
								   
								    <c:forEach var="pb" items='${pb.list}'>
								    <tr>
								    
								      <th scope="row">${pb.no}</th>
								      <td class = "followingid">${pb.followingId}</td>
								      <td>${pb.name}</td>
								      <td><i class="fa fa-list" style="color:gold;"></i> ${pb.best_count }</td>
								      <td><i class="fa fa-heart" style="color:tomato;"></i>${pb.list_count }</td>
								      <td>
								      	<button type="button" class="btn btn-danger btn-circle btn-xl deletef" ><i class="fa fa-times"></i></button>
									  </td>
								    </tr>
								    
								    
								   </c:forEach>
								  </tbody>
								</table>
								
								
								
								<!-- 페이지 처리 -->
								<div class="row">
									<div class="col-lg-12 col-12-mobile" id = "">
									
					
						<div style="float: left">
							<c:if test="${pb.startPage > 1 }">
								<a href="/MovieHolic/mypage?page=social&followingpage=${pb.startPage - 1}"><button class="btn btn-success font_bold_small">이&nbsp;&nbsp;&nbsp;전</button></a>
								
							</c:if>
						</div>
								
								
								
						<div style="float: right;">
							<c:if test="${pb.totalPage > pb.endPage }">
							<a href="/MovieHolic/mypage?page=social&followingpage=${pb.endPage+1}"><button class="btn btn-success font_bold_small">다&nbsp;&nbsp;&nbsp;음</button></a>
							</c:if>
						</div>
				
							  	<ul class="pagination justify-content-center">
							  	<c:forEach begin="${pb.startPage}" end="${pb.endPage}" var="i">
									<c:choose>

										<c:when test="${pb.currentPage == i}">
											<li class="page-item"><a class="page-link a">${i}</a></li>
										</c:when>

										<c:otherwise>
											<li class="page-item">
											<a class="page-link a" href="/MovieHolic/mypage?page=social&followingpage=${i}">${i}</a></li>
										</c:otherwise>

									</c:choose>
								</c:forEach>
							  	 
							 	 
							 	 </ul>
								<%-- float clear용 빈 div --%>
								<div style="clear: both;"></div>
						 		</div>
								</div>
  					   		</div>
  					   		
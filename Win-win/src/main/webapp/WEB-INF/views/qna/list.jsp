<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="../include/CSSLoader.jsp"%>
    
<style>
th {
	font-size: 15px;
}
td {
	font-size: 14px;
}
</style>

<c:if test="${empty adminLogin}">
<%@ include file="../include/header.jsp"%>
</c:if>

<c:if test="${adminLogin }">
<%@ include file="../include/adminHeader.jsp"%>
</c:if>

<div class="container">
<div class="container">
	<div class="col-12 mt-5">
		<p class="font-weight-bold h3">채용Q&A</p>
		<hr style="border: solid #376092;">	
	</div>
	
	<div class="d-flex justify-content-center">
		<table class="table table-sm col-md-11 table-hover table-bordered">
			<thead class="thead-light">
				<tr>
					<th>문의사항 게시판 알림</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>&nbsp;<i class="fas fa-lightbulb text-danger"></i>&nbsp;문의사항 게시판 작성가이드</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="d-flex justify-content-center">
		<table id="qnaTable" class="table table-sm col-md-11 table-hover text-center">
			<thead class="thead-light">
				<tr>
					<th width="13%">번호</th>
					<th class="truncated" width="50%">제목</th>
					<th width="4%"></th>
					<th width="11%">작성일자</th>
					<th width="11%">작성자</th>
					<th width="11%">조회수</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list }" var="board">
				<tr>
					<td class="view">${board.qnaNo }</td>					
					<td class="view"><i class="fas fa-lock mr-2"></i><a href="/qna/view?qnaNo=${board.qnaNo}" style="text-decoration: none">${board.title }</a></td>
					<td class="view">
						<c:if test="${board.asw_code ne null }">
							<i class="fas fa-check ml-2"></i>
						</c:if>
					</td>
					<td class="view"><fmt:formatDate value="${board.writedate}" pattern="yyyy-MM-dd" /></td>
					<td class="view">${board.writer }</td>
					<td class="view">${board.hit }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	<c:if test="${adminLogin }">
		<div id="btn" class="text-right">
			<button id="btnWrite" class="btn btn-primary mr-3">작성</button>
		</div>
	</c:if>
	
	
	<jsp:include page="/WEB-INF/views/util/qnapaging.jsp" />
	
	</div>
</div>

<div id="myModal" class="modal">
	      <!-- Modal content -->
	      <div class="modal-content">
	      	
	      	<div class="row">
				<div class="col-6">
				<span class="font-weight-bold h2 d-flex justify-content-start mt-3">WIN-WIN</span>
				</div>
				<div class="col-6">
				<span class="d-flex justify-content-end mt-1"><span class="close">&times;</span></span>
				</div>
			</div>
	     	<div class="mb-3" style="height:4px; background-color: #376092" ></div>
	     	
	     	<!-- 모달 내용 입력하는 부분 -->
	     	<div>
		     	<div class="mt-4">
			        <p class="font-weight-bold text-center" id="idChecking">
			        	<label>비밀번호 :</label> <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요"/>
			        	<input type="hidden" id="qnaNo" name="qnaNo"/>
			        </p>
				</div>
			
			<div class="modal-footer d-flex justify-content-center">
				<div class="row">
					<button type="button" id="btnPw" class="font-weight-bold btn btn-primary" style="background-color: #376092">확인</button>
					<button type="button"  id="btnClose" class="font-weight-bold btn btn-primary" style="background-color: #376092">취소</button>
				</div>
			</div>
	      </div>
	 
	    </div>
    </div>


<%@ include file="../include/scriptLoader.jsp"%>

<script>
$("#qnaTable").on("click",".view",function(){
	int qnano = $(this).parent().children().eq(0).text();
	$("#qnaNo").val(qnano);
	onFiles();

});

function onFiles(){
	var modal = document.getElementById('myModal');
	modal.style.display = "block";
	var span = document.getElementsByClassName("close")[0];

	var btnClose = document.getElementById("btnClose");
				
	span.onclick = function() {
		modal.style.display = "none";
	}

	btnClose.onclick = function() {
		modal.style.display = "none";
	}
	btnPw.onclick = function(){
		var qnaNo = $("#qnaNo").val();
		var pw = $("#pw").val();		
		if(pw==""){
			alert("패스워드를 입력하세요");
		}else{
			var data = {"qnaNo":qnaNo,"pw":pw};
			modal.style.display = "none";
		 	$.ajax({
			type:"post"
			,url:"/board/view"
			,data: data
			,dataType:"json"
			, success:function(data){	
					$(location).attr("href","/qna/view?qnaNo="+qnaNo);
			},error:function(){
					alert("패스워드와 일치하지 않습니다");
				}
			});
		}
		
	}
}


</script>

<%@ include file="../include/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>

<style type="text/css">

.carousel-control-next-icon:after
{
  content: '>';
  font-size: 15px;
  font-weight: bold;
  color: black;
}

.carousel-control-prev-icon:after {
  content: '<';
  font-size: 15px;
  font-weight: bold;
  color: black;
}

li.mb-3 {
  font-size: 14px;
  list-style-type: square;
}

a {
  text-decoration: none !important; 
  color: black !important;
}

h6 {
  margin-bottom: 0px; 
  padding-bottom: 0px;
}

.box1 {
  height: 280px;
  border-bottom: 1px solid lightgrey;
  border-right: 1px solid lightgrey;
}

.box2 {
  height: 280px;
  border-right: 1px solid lightgrey;
}

.underline {
  height: 2px;
  width: 150px;
  background-color: lightgrey;
}

.viewmore {
  margin-bottom: 0px; 
  padding-bottom: 0px;
}

.bigbutton {
  font-size: 14px; 
  height: 50px;
}

</style>


<%@ include file="../include/adminHeader.jsp"%>

<div class="container">
	<div class="row">

		<div class="box1 col-4 mt-4"">
			<div class="row" >
				<div class="col-6">
					<h6 class="font-weight-bold mt-2 ml-2"><a href="/jobOpen/list">채용공고</a></h6>
				</div>
				<div class="col-6 text-right">
					<p class="viewmore badge badge-pill font-weight-bold badge-light mt-2"><a href="/jobOpen/list">더보기 ></a></p>
				</div>
			</div>
			<div class="underline mt-1" ></div>
			<ul class="mt-3">
				<c:forEach items="${applylist }" var="JobopenBasic" begin="0" end="4">
					<li class="mb-3" ><a href="/jobOpen/view?boardNo=${JobopenBasic.jobopenNo}">${JobopenBasic.title}</a></li>
				</c:forEach>
			</ul>
		</div>
		
		<div class="box1 col-4 mt-4">
			<div class="row">
				<div class="col-6">
					<h6 class="font-weight-bold mt-2  ml-2"><a href="/notice/list">공지사항</a></h6>
				</div>
				<div class="col-6 text-right">
					<p class="viewmore badge badge-pill font-weight-bold badge-light mt-2"><a href="/notice/list">더보기 ></a></p>
				</div>
			</div>
			<div class="underline mt-1" ></div>
			<ul class="mt-3">
				<c:forEach items="${noticelist }" var="NoticeBoard" begin="0" end="4">
					<li class="mb-3" ><a href="/notice/view?boardNo=${NoticeBoard.noticeno}">${NoticeBoard.title}</a></li>
				</c:forEach>
			</ul>
		</div>
		
		<div class="col-4 text-center mt-2">
			<a href="/jobOpen/basicInfo"><button type="button" class="bigbutton btn font-weight-bold text-white btn-lg mt-5 mb-5" style="background: #376092;">채용공고 등록하기</button></a>
			<a href="/notice/write"><button type="button" class="bigbutton btn btn-secondary font-weight-bold btn-lg mt-5 mb-5">공지사항 등록하기</button></a>
			<div id="carouselExampleControls" class="carousel slide mt-2" data-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			   		<div class="font-weight-bold" style="font-size: 14px;"><span style="color: #376092">신입 IT 개발자 채용</span>의 지원자수</div>
			   		<h3 class="mt-3"><strong>12 명</strong></h3>
			    </div>
			    <div class="carousel-item">
			    	<div class="font-weight-bold" style="font-size: 14px;"><span style="color: #376092">경력 FRONT 디자이너 채용</span>의 지원자수</div>
			    	<h3 class="mt-3"><strong>23 명</strong></h3>
			    </div>
			    <div class="carousel-item">
			    	<div class="font-weight-bold" style="font-size: 14px;"><span style="color: #376092">인턴 채용 연계형 개발자 채용</span>의 지원자수</div>
			    	<h3 class="mt-3"><strong>152 명</strong></h3>
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev" >
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only" >Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
			<a href="/support/list"><button type="button" class="btn btn-secondary font-weight-bold btn-sm mt-2" style="width: 300px">지원현황 바로가기</button></a>
		</div>
	</div>
	
	<div class="row">
		
		<div class="box2 col-4">
			<div class="row">
				<div class="col-6">
					<h6 class="font-weight-bold mt-3  ml-2"><a href="/admin/chart">통계관리</a></h6>
				</div>
				<div class="col-6 text-right">
					<p class="viewmore badge badge-pill font-weight-bold badge-light mt-3"><a href="/admin/chart">더보기 ></a></p>
				</div>
			</div>
			<div class="underline mt-1"></div>
		</div>
		
		<div class="box2 col-4">
			<div class="row">
				<div class="col-6">
					<h6 class="font-weight-bold mt-3  ml-2"><a href="/qna/list">문의사항</a></h6>
				</div>
				<div class="col-6 text-right">
					<p class="viewmore badge badge-pill font-weight-bold badge-light mt-3"><a href="/qna/list">더보기 ></a></p>
				</div>
			</div>
			<div class="underline mt-1"></div>
			<ul class="mt-3">
				<c:forEach items="${qnalist }" var="QnaBoard" begin="0" end="4">
					<li class="mb-3" ><a href="/qna/view?boardNo=${QnaBoard.qnaNo}">${QnaBoard.title}</a></li>
				</c:forEach>
			</ul>
		</div>
		
		<div class="col-4 text-center mt-5">
			<div class="mt-3"></div>
			<div class="font-weight-bold" style="font-size: 14px;">답변이 완료되지 않은 문의사항</div>
			<h3 class="mt-3"><strong>18 개</strong></h3>
			<a href="/qna/list"><button type="button" class="btn btn-secondary font-weight-bold btn-sm mt-2" style="width: 300px">문의사항 바로가기</button></a>
		</div>
	</div>
</div>

<%@ include file="../include/scriptLoader.jsp"%>
<%@ include file="../include/footer.jsp"%>
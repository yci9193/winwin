<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/CSSLoader.jsp"%>
<style>
</style>

<script type="text/javascript">
$(document).ready(function() {
	   
	   var tid;
	   var cnt = 1800;
	   
	   counter_init();
	   
	   function counter_init() {
	      tid = setInterval(function counter_run() {
	         document.all.counter.innerText = time_format(cnt);
	         cnt--;
//	          console.log(cnt);
	         
	         if(cnt < 0) {
	            clearInterval(tid);
//	             self.location = "logout.php";
	         }
	      }, 1000);
	   }
	   
	   $("#timer").click(function() {
	      clearInterval(tid);
	      cnt = parseInt(1800);
	      counter_init();
	   });
	   
	   function time_format(s) {
	      var nHour=0;
	      var nMin=0;
	      var nSec=0;
	      
	      if(s>0) {
	         nMin = parseInt(s/60);
	         nSec = s%60;
	         
	         if(nMin>60) {
	            nHour = parseInt(nMin/60);
	            nMin = nMin%60;
	         }
	      }
	      
	      if(nSec<10) nSec = "0"+nSec;
	      if(nMin<10) nMin = "0"+nMin;
	      
	      return ""+nHour+":"+nMin+":"+nSec;
	   }
	   
	});
	
</script>
<%@ include file="../include/header.jsp"%>


<div class="container">
	<h3 class="mt-5 font-weight-bold">입사지원 등록</h3>
	<img class="img-fluid d-block" src="/resources/image/grayline.png">

	 <div class="col-md-12 border border-secondary mt-3 p-0">
   		<table class="table col-md-12 mb-0">
     		<thead>
       			<tr>
       				<th>공고명</th>
       			</tr>
     		</thead>
     		<tbody>
       			<tr style="line-height: 0.8em;">
         			<th class="text-center align-middle bg-secondary">접수상태</th>
            		<td class="text-center align-middle">지원서 저장 전 입니다</td>
         			<th class="text-center align-middle bg-secondary">원서 마감 일시</th>
            		<td class="text-center align-middle">2018-12-31 23:59</td>
            		<td class="text-danger text-center align-middle">(D-98일 전)</td>
         			<th class="text-center align-middle bg-secondary">자동 로그아웃</th>
            		<td class="text-danger text-center align-middle"><span id="counter"></span></td>
            		<td><button id="timer">연장</button></td>
      			</tr>    
     		</tbody>
   		</table>
   	</div>

	<h4 class="mt-4 mb-3 font-weight-bold">작성완료</h4><input type="hidden" value="jopopenNo" />
	<div class="row">
		<a href="/apply/userDetailUpdate"><img class="img-fluid d-block ml-3" src="/resources/image/G_userDetail.png"></a>
		<a href="/apply/academicUpdate"><img class="img-fluid d-block" src="/resources/image/G_academic.png"></a>
		<a href="/apply/militaryUpdate"><img class="img-fluid d-block" src="/resources/image/G_military.png"></a>
		<a href="/apply/careerUpdate"><img class="img-fluid d-block" src="/resources/image/G_career.png"></a>
		<a href="/apply/introduceUpdate"><img class="img-fluid d-block" src="/resources/image/G_introduce.png"></a>
		<img class="img-fluid d-block" src="/resources/image/B_complete.png">
	</div>

	<div class="row col-12 mt-5">
		<div class="col-3 mt-8 m-5">
			<img src="/resources/image/resume.png" style="height: 250px;"/>
		</div>
		<div class="col-7" >
			<hr><br>
			<strong>채용공고 지원자의 경우, <span class="text-danger">지원서 작성 후 최종접수를 한 이후에는</span></strong><br>
            <strong><span class="text-danger">지원서 수정이 불가능 </span>하오니 모든 항목이 빠짐없이 기재가 되었는지 확인하신 후</strong><br>
            <strong> 신중하게 최종접수하시기 바랍니다.</strong><br>
            <strong>단, <span class="text-danger">최종접수를 하지 않은 상태에서는 지원서 접수 마감일까지 수정이 가능</span>합니다.</strong>
            <br><br><br>
            <ul class="mb-0">
            	<li style="line-height: 150%;"><strong>지원서 입력이 완료된 경우 최종접수가 가능하며 최종접수를 하시려면 아래의 최종접수 버튼을 클릭하시기 바랍니다.</strong></li>
            	<li style="line-height: 150%;"><strong>본인이 입사지원서 작성 전 지정하셨던 <span class="text-danger">"비밀번호"</span>는 지원서 수정 및 합격자 확인시 필요하므로 반드시 기억해주시기 바랍니다.</strong></li>
			</ul>
			<br><br><br>
			<div class="col-12 mt-5 p-0 d-flex justify-content-end">
      			<button class="btn btn-secondary text-black mr-2" id="Btn">지원서 미리보기</button>
      			<a href="/apply/finish"><button class="btn btn-primary text-white">최종접수</button></a>
  			</div>
			<hr>
		</div>
	</div>
   
</div>

<%@ include file="../apply/modal.jsp" %>

<%@ include file="../include/scriptLoader.jsp"%>

<%@ include file="../include/footer.jsp"%>
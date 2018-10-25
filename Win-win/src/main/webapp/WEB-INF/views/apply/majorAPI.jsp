<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {
      
	var xhr = new XMLHttpRequest();
	var url = "http://www.career.go.kr/cnet/openapi/getOpenApi?apiKey=3d2366be6096ee283bd1d6eaede2a14f&svcType=api&svcCode=MAJOR&contentType=json&gubun=univ_list&univSe=univ&thisPage=1&perPage=318"
	xhr.open('GET', url);
	xhr.onreadystatechange = function () {
		if (this.readyState == 4) {
	    	var data = JSON.parse(this.responseText).dataSearch.content;
	      
			var value = new Array();
			for(var i=0; i<data.length; i++){
				value[i] = data[i].facilName;
	         	         
	         	var valarr = value[i].split(", ")
	      	 	for(var k=0; k<valarr.length; k++){

	      	 		$("#univMajor").append(
	                  $("<option>").attr(
	                     "value", valarr[k]
	                  ).text(valarr[k])
	               );
	         	}	         
	      }
	    }
	};


	xhr.send('');
            
      $('.js-example-basic-single').select2();
		

		
			
		// Get the modal
		var modal = document.getElementById('univMModal');
		
		// Get the button that opens the modal
		var btn = document.getElementById("univMSearch");
		
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];                                          
		
		var btnUnivMClose = document.getElementById("btnUnivMClose");
		
		// When the user clicks on the button, open the modal 
		btn.onclick = function() {
		    modal.style.display = "block";
		}
		
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		    modal.style.display = "none";
		}
		
		btnUnivMClose.onclick = function() {
		    modal.style.display = "none";
		}
		
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}
		
		
		$("#btnUnivMOk").click(function() {
			var select = $("#univMajor option:selected").val();
			var write =$("#writeunivMajor").val();
			
			if($('#univMajor').val() == "학과명을 선택하세요") {
				$('#univMajor').val(write);
				modal.style.display = "none";
				$("#writeunivMajor").val('');
				
			} else {
				$('#univMajor').val(select);
				modal.style.display = "none";
				$("#univMajor").val('학과명을 선택하세요').trigger('change') ;
			}

			
		});
      
   });    
   
</script>

</head>
<body>

    <!-- The Modal -->
    <div id="univMModal" class="modal">
 
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
			        <p class="font-weight-bold text-center" style="margin-bottom: 0;">학과명을 검색하세요.</p>
			        <p class="text-center mb-3" style="font-size: 13px; margin-bottom: 0;">해외대학 검색시 대/소문자를 구분하여 입력해 주세요.</p>
			        <div class="d-flex justify-content-center">
				        <select id="univMajor" class="js-example-basic-single " style="width: 200px;">
				        	 <option selected="selected">학과명을 선택하세요</option>
						</select>
					</div> 
					
				</div>

				<div class="mt-4">
			        <p class="font-weight-bold text-center mb-3" style="margin-bottom: 0;">그밖의 학과명을 직접 입력하세요.</p>
			        <div class="d-flex justify-content-center">
			        	<input type="text" id="writeunivMajor" style="width:200px;"/>
			        </div>
				</div>
			
			<div class="modal-footer d-flex justify-content-center">
				<div class="row">
				<button type="button"  id="btnUnivMOk" class="font-weight-bold btn btn-primary mr-2 " style="background-color: #376092">확인</button>
				<button type="button"  id="btnUnivMClose" class="font-weight-bold btn btn-secondary">닫기</button>
				</div>
			</div>
	      </div>
	 
	    </div>
    </div>

</body>
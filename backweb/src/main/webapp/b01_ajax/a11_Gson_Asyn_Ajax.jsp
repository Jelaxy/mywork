<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<%--
# ajax front단 비동기 옵션 처리와 Gson lib활용하여 json 데이터 가져오기
1. front단 비동기 처리

2. back단 Gson lib활용하기
	1) 화면을 dao의 객체 tr/td로 만드는데
	2) json데이터롤 만들어서 전송하는 경우가 일반적이다.
		Person(class)			==> {"name":"홍길동",
									"age":25,"loc":"서울"}
			name/age/loc
	3) Gson lib은 이것을 자동으로 처리해주는 패키지 class이다.
# 처리 순서
1. 사용할 파일 
	1) a11_Gson_Asyn_Ajax.jsp(프런트처리)
	2) z11_memberCheck.jsp(백앤드처리)
2. (백엔드 처리) z11_memberCheck.jsp?id=himan
	1) 요청값 처리
		String id = request.getParameter("id");
	2) Dao, Vo, Gson import
		import="com.google.gson.Gson"
	3) Member m = dao.checkMember(id)
	4)  if(m!=null)
			<%=gson.toJson(m)%>
		else
			{"id":""}
3. (프런트처리)
	1) 화면구현
		id: [	] [등록여부확인] ==> 클릭시 이벤트 핸들러
	2) 이벤트핸들러 함수
	// 비동기 통신은 onreadystatechange 기능메서드 활용이 어렵다.
	// setTimeout()
	
		function asynAjx(page){
			xhr.open("get",page,true)
			xhr.onreadystatechange=function(){
				if(xhr.status==200&&xhr.readyState==4){
					return xhr.responseText;
				}
			}
			return xhr.responseText;
		}
		function checkMember(){
			var idVal = document.querySelector("#id")
			var memObj = JSON.parse(asynAjx(page+"?id="+idVal))
			if(memObj.id!=""){
				alert(memObj.id+"는 등록된 아이디입니다")
			}else{
				alert(idVal+"는 등록 가능합니다")
			}
		}
		
		
 --%>
 <script type="text/javascript">
	function checkMember(){
		var idObj = document.querySelector("#id");
		// ajax확인 전, 공백, 크기에 대한 check 후에 ajax 처리.
		//alert("아이디 유효성 check:"+idVal)
		var page = "z11_memberCheck.jsp?id="+idObj.value
		//asyGet(page)
		var xhr = new XMLHttpRequest()
		xhr.open("get",page,true)
		xhr.send()
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4&&xhr.status==200){
				var memObj = JSON.parse( xhr.responseText )
				console.log(memObj)
				if(memObj.id==""){
					alert(idObj.value+"은 사용 가능한 아이디입니다.")
				}else{
					alert(memObj.id+" 이미 등록되어 있습니다.\n다른 아이디 입력하세요")
					idObj.value=""
					idObj.focus()
				}
			}
		}
		
	}
 </script>
<body>
    <div class="container mt-3">
    	<h2>사원정보 등록</h2>
    	<form action="" method="post">
         	<div class="mb-3 mt-3">
            <label for="id">회원아이디:</label>
            <input type="text" class="form-control" 
      	     id="id" placeholder="회원아이디 입력" name="id">
         	</div>
         	<button onclick="checkMember()" type="button" class="btn btn-success">유효성체크</button>
     	</form>
     	
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>Firstname</th>
				    <th>Lastname</th>
				    <th>Email</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>John</td>
			        <td>Doe</td>
			        <td>john@example.com</td>
			   	</tr>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>
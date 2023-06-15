<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	# jsp의 주요 내장 객체
	1. 실제로 마지막에 전환 될 seclet에서 선언된 객체를 말한다.
	2. 주ㄹ 화면단 처리나 로직에서 많이 처리하는 객체를 사용할 때 활용된다.
	3. 주요 개체 내용
		1) page : jsp 페이지에서 하나의 페이지의 구현에 사용하는 자바 클래스의 인스턴스이다.
		2) request : 클라이언트 요청 정보를 저장하는 객체이다.
		3) response : 응답 정보를 저장하는 객체이다.
		4) session : http 세션 정보를 저장하는 객체이다.
			서버와 클라이언트의 연결된 상태를 기준으로 특정 변수를 저장 범위로 처리한다.
		5) application : 웹 어플리케이션에 대한 정보를 저장한다.
			웹 서버 전체에 대한 저장정보를 처리할 수 있다.
		6) out : jsp 페이지가 생성하는 결과를 출력할 때 사용되는 출력 스트림이다.
		7) config : jsp 페이지를 구현한 자바 클래스의 인스턴스이다.
		8) exeception : 예외 객체, 예외 페이지에서만 사용된다.
	# out 기본 객체
	1. jsp 페이지가 생성하는 모든 내용은 out 기본 객체를 통해서 전송할 수 있다.
	2. 복잡한 if-else 문 사용시, out 기본 객체 사용하면 편리하다.
		1) scriptlet, expression의 복잡한 사용보다, 특정한 경우 out으로 활용할 때, 더 효율적일 때가 많다.
	3. 출력메서드
		1) out.print() : 데이터를 출력만 한다.
		2) out.println() : 데이터를 출력하고 줄바꿈
		3) out.newLine() : 줄바꿈처리
	 --%>
	 <h2>script만 사용하는 경우</h2>
	 <h3>
	 	<%for(int cnt=1;cnt<=10;cnt++){ %>
	 		<%=cnt %>
	 	<%} %>
	 </h3>
	 <h2>out객체 사용</h2>
	 <h3>
	 <% for(int cnt=1; cnt<=10; cnt++){
	 	out.print(cnt+", ");
	 	}
	  %>
	 </h3>
	 <%--
	 ex) 1~25까지 5X5 테이블을 out이용하여 출력하되
	 해당 cell을 클릭시 배경색상이 변경되게 하세요
	 1. 기본 tag로 기본틀을 만든다.
	 2. 반복적으로 처리할 내용 확인
	 	==> 반복문 처리
	 3. 반복steo이 규칙으로 다른 내용
	 	==> if 조건문을 통해서 처리
	 --%>
	<script type="text/javascript">
		function call(obj){
			obj.style.background="pink";
		}
	</script>
		 <table width="500pt" height="500pt"border>
		 		 <%
		 for(int cnt=1;cnt<=25;cnt++){
			 if(cnt%5==1) out.print("<tr>");
			 out.print("<th onclick='call(this)'>");
			 out.print(cnt);
			 out.print("</th>");
			 if(cnt%5==0) out.print("</tr>");
		 }
		 %>
		 </table>
</body>
</html>
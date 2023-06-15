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
1. JSP 디렉티브의 역할은 무엇인가?
   a) JSP 페이지의 속성을 설정한다.
   b) JSP 페이지의 스크립트 코드를 지정한다.
   c) JSP 페이지의 출력 형식을 지정한다.
   d) JSP 페이지의 태그 라이브러리를 선언한다.

답: C

2. JSP의 주요 내장 객체는 무엇인가?
   a) page, request, response, session, application, out
   b) request, response, session, application, config, exception
   c) page, request, session, application, out, exception
   d) page, request, response, session, application, config

답: A, B, C, D tlqkf

3. JSP에서 데이터를 출력하는 메서드는 무엇인가?
   a) out.print()
   b) out.println()
   c) out.newLine()
   d) out.write()

답: A, B

4. JSP에서 request 객체를 사용하여 클라이언트의 요청값을 처리할 때 사용하는 메서드는?
   a) request.getParameter()
   b) request.getAttribute()
   c) request.getSession()
   d) request.getQueryString()

답: A

5. JSP에서 query string이란 무엇인가?
   a) 클라이언트가 서버에 데이터를 전송하는 방식
   b) JSP 페이지에서 출력하는 결과의 형식
   c) JSP 페이지에서 사용하는 외부 라이브러리
   d) JSP 페이지의 속성을 설정하는 지시자

답: A

6. JSP에서 form 요소 객체와 query string과의 관계는 무엇인가?
   a) form 요소 객체를 사용하여 query string을 생성한다.
   b) form 요소 객체를 사용하여 query string을 전송한다.
   c) form 요소 객체를 사용하여 query string을 받아온다.
   d) form 요소 객체를 사용하여 query string을 처리한다.

답: D

7. JSP에서 다중 데이터를 전송하기 위해 사용하는 요소는?
   a) input 태그의 type이 "text"인 요소
   b) input 태그의 type이 "submit"인 요소
   c) select 태그
   d) textarea 태그

답: B

8. JSP에서 관리자 정보를 select 태그에 가져와서 검색할 때, 어떤 방식으로 처리할 수 있는가?
   a) DAO를 사용하여 데이터를 조회하고, forEach 문을 사용하여 select 태그에 데이터를 출력한다.
   b) SQL을 작성하여 관리자 정보를 조회하고, forEach 문을 사용하여 select 태그에 데이터를 출력한다.
   c) VO를 사용하여 관리자 정보를 저장하고, forEach 문을 사용하여 select 태그에 데이터를 출력한다.
   d) DAO를 사용하여 데이터를 조회하고, option 태그를 사용하여 select 태그에 데이터를 출력한다.

답: A

9. JSP에서 배열 데이터를 처리하기 위해 사용되는 반복문은?
   a) for-each 문
   b) for 문
   c) while 문
   d) do-while 문

답: A, B

10. JSP에서 페이지 간의 데이터 전달을 위해 사용되는 객체는?
    a) request
    b) response
    c) session
    d) application

답: A

11. JSP에서 지시자를 사용하여 외부 라이브러리를 포함할 때 주로 사용되는 지시자는?
   a) page
   b) taglib
   c) include
   d) import

답: B

12. JSP의 주요 내장 객체 중 클라이언트 요청 정보를 저장하는 객체는?
   a) page
   b) request
   c) response
   d) session

답: B

13. JSP에서 HTML 태그를 동적으로 생성하고 출력하기 위해 사용하는 출력 객체는?
   a) page
   b) request
   c) response
   d) out

답: D

14. JSP에서 전송된 데이터를 서버에서 받기 위해 사용되는 객체는?
   a) page
   b) request
   c) response
   d) out

답: B

15. JSP에서 form 요소를 사용하여 데이터를 전송할 때, 데이터를 서버에서 받기 위해 사용되는 메서드는?
   a) request.getParameter()
   b) response.getParameter()
   c) page.getParameter()
   d) out.getParameter()

답: A

16. JSP에서 form 요소의 값을 받아와서 데이터베이스에 등록하는 기능을 처리하기 위해 사용되는 객체는?
   a) page
   b) request
   c) response
   d) dao

답: C

17. JSP에서 select 요소를 생성하여 사용자로부터 선택된 값을 받아오기 위해 사용되는 태그는?
   a) select
   b) option
   c) input
   d) checkbox

답: B

18. JSP에서 checkbox 요소를 생성하여 여러 값을 선택받기 위해 사용되는 태그는?
   a) select
   b) option
   c) input
   d) checkbox

답: C

19. JSP에서 radio 요소를 생성하여 여러 값 중 하나를 선택받기 위해 사용되는 태그는?
   a) select
   b) option
   c) input
   d) radio

답: C

20. JSP에서 데이터베이스 조회 결과를 화면에 출력하기 위해 사용되는 반복문은?
    a) for-each
    b) for
    c) while
    d) if-else
    
답: A
    
 --%>
</body>
</html>
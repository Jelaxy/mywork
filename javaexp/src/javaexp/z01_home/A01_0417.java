package javaexp.z01_home;

import javaexp.a08_relation.vo.Man;
import javaexp.a08_relation.vo.Woman;

public class A01_0417 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2023-04-17
//		[1단계:조별확인] 1:1관계 개념을 옆에 있는 조원과 함께 이해 했는지 확인하고 의견을 나누고 정리해보세요.
//		   1) 1:1관계 객체를 선언하고 만드는 상황을 어떤 상황인지?
		
//		   2) 1:1관계 객체 처리할 수 있는지?
		
//		   3) 다른 객체 추가 메서드 this.객체 = 객체를 이해하고 있는지?
		
//		   4) if(참조==null) 코드는 언제 왜 사용하는지?
		
//		   5) 위 내용을 이해 기반으로 커플매칭 사이트에서 Woman/Man 처리해보세요.
		
		Woman wo = new Woman("춘향 ","접속");
		Man man = new Man();
		man.couple(wo);
		man.meetsGirl();
		
		
//		[1단계:개념] 1. 1:1 관계 객체 구현 순서를 예제를 통해 처리하세요.
			
//		[1단계:개념] 2. 객체형 배열의 처리 과정을 기본 예제와 함께 설명하세요.
		
//		[1단계:확인] 3. 아래의 2차원 데이터를 객체형 배열로 선언하고 출력하세요.
		
//		      1) 구매물건리스트(물건명,가격,구매갯수)
//		      2) 회원정보리스트(회원아이디, 패스워드, 회원명, 포인트, 권한)
		
//		[1단계:개념] 4. select 콤보박스의 속성을 각 속성값에 따른 기능적 차이와 함께 기술하세요.
		
//		[1단계:개념] 5. input의 속성에 따른 속성값을 차이를 기술하세요.
		
//		[1단계:확인] 6. 아래 사이트의 회원가입화면을 form요소객체를 table 안에서 적절히 활용하여 처리하세요.(css적용 제외)
//		      https://www.storyum.kr/story/main/contents.do?menuNo=500018&siteId=5
//		      에 (기본정보입력 항목)에 맞게 처리하세요
	}

}
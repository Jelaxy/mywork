package backweb.a01_database;

import java.util.Scanner;

import backweb.z01_vo.Member;

public class B01_ShoppingMall {
	private static A05_MemberDao dao;
	public B01_ShoppingMall() {
			dao = new A05_MemberDao();
	}
	
	public void loginMenu() {
		Scanner sc = new Scanner(System.in);
		while(true) {
			System.out.println("#로그인#");
			System.out.println("아이디를 입력");
			String id = sc.nextLine();
			System.out.println("패그워드를 입력");
			String pass= sc.nextLine();
			Member mem = dao.login(id, pass);
			if(mem!=null) {
				System.out.println("로그인성공!");
				System.out.println(mem.getName()+"님 환영합니다.");
			}else {
				System.out.println("로그인 실패");
				System.out.println(id+"는 인증계정이 아닙니다");
				System.out.println("계속 하시겠습니까?(Y/N)");
				String isYN = sc.nextLine();
				if(!isYN.equals("Y")) {
					break;
				}
			}
		}
		System.out.println("로그인 프로그램 종료!");
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		B01_ShoppingMall b= new B01_ShoppingMall();
		b.loginMenu();
	}

}

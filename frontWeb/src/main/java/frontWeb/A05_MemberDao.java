package frontWeb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import frontWeb.VO.Member;

public class A05_MemberDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	// 로그인 처리 메서드 정의
	public Member login(String id, String pass) {
		Member mem = null;
		String sql = "SELECT * FROM member02\r\n"
				+ "WHERE id=? AND pass = ?";
		//1. 연결(기본예외/자원해제)
		try {
			con = DB.con();
			// 2. 대화(sql 전달 후, 매개변수로 전달)
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			// 3. 결과
			rs = pstmt.executeQuery();
			// 4. (ResultSet ==> VO) ? 단일/여러개 if/while
			// Member(String id, String pass, String name, int point, String auth, Date regdate)
			if(rs.next()) {
				mem = new Member(
					rs.getString("id"),
					rs.getString("pass"),
					rs.getString("name"),
					rs.getInt("point"),
					rs.getString("auth"),
					rs.getDate("regdate")
				);
			}
			// 
		} catch (SQLException e) {
			System.out.println("DB:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타:"+e.getMessage());
		}finally {
			DB.close(rs, pstmt, con);
		}
		
		
		return mem;
	}
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A05_MemberDao dao = new A05_MemberDao();
		Scanner sc = new Scanner(System.in);
		System.out.println("#로그인 시작!!#");
		while(true) {
			
			System.out.print("아이디를 입력:");
			String id = sc.nextLine();
			System.out.print("패스워드를 입력:");
			String pass = sc.nextLine();
			Member mem = dao.login(id, pass);
			if(mem!=null) {
				System.out.println("로그인 성공!");
				System.out.println(mem.getName()+"님 환영합니다.");
				break;
			}else {
				System.out.println("로그인 실패");
				System.out.println(id+"는 인증계정이 아닙니다.");
				System.out.print("로그인 계속 하시겠습니까?(Y/N):");
				String isYN = sc.nextLine();
				if(!isYN.equals("Y")) {
					break;
				}
			}		
		}
		System.out.println("로그인 프로그램 종료!");
	}

}

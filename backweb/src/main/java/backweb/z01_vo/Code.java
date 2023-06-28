package backweb.z01_vo;

// backweb.z01_vo.Code
public class Code {
	 private int no;
	 private String title;
	 private String val;
	 private int refno;
	 private int ordno;
	public Code() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Code(int no, String title, String val, int refno, int ordno) {
		super();
		this.no = no;
		this.title = title;
		this.val = val;
		this.refno = refno;
		this.ordno = ordno;
	}
	
	public Code(String title, String val) {
		super();
		this.title = title;
		this.val = val;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
	public int getRefno() {
		return refno;
	}
	public void setRefno(int refno) {
		this.refno = refno;
	}
	public int getOrdno() {
		return ordno;
	}
	public void setOrdno(int ordno) {
		this.ordno = ordno;
	}

	 
}

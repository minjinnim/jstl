package member.vo;

public class MemberVO {
	private int idx=0;
	private String id=null;
	private String password=null;
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}

	public MemberVO(int idx, String id, String password) {
		super();
		this.idx = idx;
		this.id = id;
		this.password = password;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "MemberVO [idx=" + idx + ", id=" + id + ", password=" + password + "]";
	}


}

package collection;

public class Member {
	
	
	private int memberId;
	private String memberName;
	
	public Member(int memberId,String memberName) {
		this.memberId=memberId;
		this.memberName=memberName;
			
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return memberName+ "ȸ������ ���̵��" +memberId+"�Դϴ�.";
	}

	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		
		//hashCode()�޼ҵ尡 ȸ�� ���̵� ��ȯ�ϵ��� �������մϴ�. 
		return memberId;
	
	}

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		
		//�Ű������� ���� ȸ�� ���̵� �ڽ��� ȸ�� ���̵�� ���ٸ� true�� ��ȯ�մϴ�. 
		if(obj instanceof Member) {
			
			Member member=(Member)obj;
			if(this.memberId==member.memberId) 
				return true;
			else 
				return false;
			
			
		}
		
		return false;
	}
	
	
	
	
	
	

}

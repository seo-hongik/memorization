//��Ű���̸��� collection.hashSet�Դϴ�.
package collection.hashSet;

import collection.Member;

//Ŭ���� �̸� MemberHashSetTest
public class MemberHashSetTest {
	
	//main()�޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//memberHashSet ��ü�� �����Ϻ��. 
		MemberHashSet memberHashSet =new MemberHashSet();
		
		//ȸ���� �����մϴ�. 
		Member memberA= new Member(1001,"���̾�");
		Member memberB= new Member(1002,"����ġ");
		Member memberC= new Member(1003,"����");
		
		//ȸ���� �߰��մϴ�. 
		memberHashSet.addMember(memberA);
		memberHashSet.addMember(memberB);
		memberHashSet.addMember(memberC);
		//��ü ȸ���� ����մϴ�. 
		memberHashSet.ShowAllMembers();
		
		//����ġ ȸ���� �����մϴ�. 
		memberHashSet.removeMember(memberB.getMemberId());
		
		//��ü ȸ���� ����մϴ�. 
		memberHashSet.ShowAllMembers();
				
		//���̵� �ߺ��� ȸ���� �߰��մϴ�. 
		Member memberD= new Member(1003,"��");
		
		memberHashSet.addMember(memberD);
		
		//��ü ȸ���� ����մϴ�. 
		memberHashSet.ShowAllMembers();
	}

}
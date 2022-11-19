//��Ű���̸��� collection.hashSet �Դϴ�.
package collection.hashSet;

import java.util.HashSet;
import java.util.Iterator;

import collection.Member;

//MemberHashSet Ŭ������ �����մϴ�. 
public class MemberHashSet {

	
	//�ʵ� (��� ����)�� �����մϴ�. 
	private HashSet<Member> hashSet;
	
	//����Ʈ �����ڸ� �����մϴ�. 
	
	public MemberHashSet() {
		//HashSet ��ü�� �����մϴ�. 
		
		hashSet = new HashSet<Member>();
	}
	//�޼���(����Լ�)�� �����մϴ�.
	
	//ȸ���� �߰��ϴ� �޼���
	
	public void addMember(Member member) {
		
		hashSet.add(member);
		
	}
	
	//ȸ���� �����ϴ� �޼���
	
	public boolean removeMember(int memberId) {
		//lterator�� Ȱ���� ��ȸ�մϴ�. 
		
		Iterator<Member> iMember =hashSet.iterator();
		
		
		while(iMember.hasNext()) {
			//ȸ���� �ϳ��� �����ɴϴ�.
			Member member = iMember.next();
			int tempId = member.getMemberId();
			//���̵� ���Ͽ� ���� ���̵��ΰ��
			
			if(tempId == memberId) {
				
				//ȸ���� �����մϴ�. 
				hashSet.remove(member);
				return true;
			}
			
		}
		System.out.println(memberId+"�� �������� �ʽ��ϴ�.");
		return false;
	}
	
	//��ü ȸ���� ����ϴ� �޼��� 
	
	public void ShowAllMembers() {
		
		for(Member member:hashSet) {
			System.out.println(member);
			
		}
		System.out.println();
		
	}
	
}

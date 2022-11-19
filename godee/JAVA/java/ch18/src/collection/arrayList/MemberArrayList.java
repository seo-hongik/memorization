//��Ű���̸��� collection.arrayList�Դϴ�.
package collection.arrayList;

import java.util.ArrayList;

import collection.Member;

//MemberArrayList Ŭ������ �����մϴ�.
public class MemberArrayList {

	//�ʵ� (�������)�� �����մϴ�. 
	
	private ArrayList<Member> arrayList;
	
	//����Ʈ �����ڸ� �����մϴ�.
	public MemberArrayList() {
		//Member ������ ������ ArrayList�� �����մϴ�.
		arrayList=new ArrayList<Member>();
		
		
		
	}
	
	//�޼��� (��� �Լ�)�� �����մϴ�.
	//ȸ���� �߰��ϴ� �޼���
	public void addMember(Member member) {
		
		arrayList.add(member);
		
		
	}
	//ȸ���� �����ϴ� �޼���
	public boolean remove(int memberId) {
		for(int i=0; i<arrayList.size(); i++) {
			
			//get �޼���� ȸ���� ���������� �����ɴϴ�.
			Member member=arrayList.get(i);
			int tempId=member.getMemberId();
			
			//ȸ�� ���̵� �Ű������� ��ġ�ϸ�
			if(tempId==memberId) {
				//�ش� ȸ���� �����մϴ�. 
				arrayList.remove(i);
				return true;
			}
			
		}
		//�ݺ����� ������ ���� �ش� ���̵� ã�� ���� ��� �Ž����� ����մϴ�.
		System.out.println(memberId+"�� �������� �ʽ��ϴ�.");
		return false;	
		
	}
	
	//��ü ȸ���� ����ϴ� �޼��带 ����
	public void showAllMembers() {
		for(Member member : arrayList) {
			
			System.out.println(member);
			
		}
		
		System.out.println();
		
		
	}
	
	//���̵� �ߺ���� ȸ���� �߰��մϴ�. .
	

	

	
	
	
}

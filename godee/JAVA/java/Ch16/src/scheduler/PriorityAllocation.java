//��Ű�� �̸��� scheduler�Դϴ�.
package scheduler;

//PriorityAllocation Ŭ������ ���ǵǾ����ϴ�.
//PriorityAllocation Ŭ������ Scheduler�������̽��� �����մϴ�.
//�� ����� ���� ���� ��ȭ���� ��⿭���� ������ �����ɷ��� ���� ������ �켱 ����մϴ�. 

public class PriorityAllocation implements Scheduler {

	@Override
	public void getNextCall() {
		// TODO Auto-generated method stub
		System.out.println("�� ����� ���� ���� ��ȭ�� ���� �����ɴϴ�.");
	}

	@Override
	public void sendCallToAgent() {
		// TODO Auto-generated method stub
		System.out.println("���� �ɷ��� ���� �������� �켱������ ����մϴ�.");
	}

}

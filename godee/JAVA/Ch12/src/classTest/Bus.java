//��Ű�� �̸��� classTest�Դϴ�.
package classTest;


//���� Ŭ������ �����մϴ�.
public class Bus {
	
	//�ʵ�(��� ������ )�����մϴ�.
	
	int busNumber; 	//������ȣ
	int passengerCount;	//�°���
	int money; //���� ����
	
	//���� ��ȣ�� �Ű������� �޴� ������
	public Bus(int busNumber) {
		
		this.busNumber=busNumber;
		
		
	}


	//�°��� ������ ź ��츦 �����ϴ� �޼���
	public void take(int money) {
		
		this.money+=money;	//���� ���� ����
		passengerCount++;	//�°� �� ����
		
		
	}



	//���� ������ ����ϴ� �޼���
	public void showInfo() {
		System.out.println("����"+busNumber+"���� �°���"+passengerCount+"���̰�,������"+money+"���Դϴ�.");
	}


}

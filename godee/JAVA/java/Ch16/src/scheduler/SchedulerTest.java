//��Ű�� �̸��� scheduler�Դϴ�.
package scheduler;

import java.io.IOException;

//Ŭ���� �̸��� SchedulerTest�Դϴ�.
public class SchedulerTest {

//	main()�� �����Ǿ����ϴ�.
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		
		//��¹��� ȣ���մϴ�. 
		
		System.out.println("��ȭ ��� �Ҵ� ����� �����Ͻÿ�");
		System.out.println("R : �Ѹ� ���ʷ� �Ҵ��մϴ�.");
		System.out.println("L : �����ְų� ��Ⱑ ���� ���� ���� �������� �Ҵ��մϴ�.");
		System.out.println("P :�켱 ������ ���� �� ���� �Ҵ��մϴ�.");
		
		//�Ҵ� ����� �Է¹޾� ch ������ �����մϴ�. 
		
		int ch=System.in.read(); 
		
		Scheduler scheduler=null;
		
		
		
		if(ch=='R'|| ch=='r') {
			//�Է¹��� ���� R�Ǵ� r�̸� RoundRobinŬ������ �����մϴ�.
			scheduler=new RoundRobin();
	
		}else if(ch=='L'||ch=='l') {
			//�Է¹��� ���� L�Ǵ� l�̸� LeastJobŬ������ �����մϴ�.
			scheduler=new LeastJob();
					
		}else if(ch=='P'|| ch=='p') {
			//�Է¹��� ���� P�Ǵ� p�̸�  PriorityAllocationŬ������ �����մϴ�.
			scheduler=new PriorityAllocation();
			
		}else {
			System.out.println("���� ���� ���� �����Դϴ�.");	
			return;
		
			
		}
		//� ��å������ ������� �������̽��� ������ �޼��带 ȣ���մϴ�. 
		scheduler.getNextCall();
		scheduler.sendCallToAgent();
		
		
	}

}

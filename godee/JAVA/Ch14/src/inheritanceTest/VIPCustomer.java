//package�̸��� inheritanceTest�Դϴ�.
package inheritanceTest;

//VIPCustomer class �����մϴ�.


//VIPCustomer class��    Customer class�� ��� �޽��ϴ�.
public class VIPCustomer extends Customer {
	
	
		//VIP �� ���� ����� ������ ���� �ʿ��� �ʵ�(������� )�� �����մϴ�. 
		
		private int agentID; 			//VIP �� ��� ���� ���̵�
		double saleRatio;				//VIP ������
	
		//����Ʈ ������
		public VIPCustomer() {
		
			
			//�����Ϸ��� �ڵ����� �߰��ϴ� �ڵ� �Դϴ�. 
			//���� Ŭ������ Customer()�� ȣ�� �˴ϴ�.
			
			//The constructor Customer() is undefined
			super();
			
			
			//The field Customer.customerGrade is not visible
			/*���� Ŭ�������� private ���� �̹Ƿ� ������ ���ϴ�.*/ 
			/*���� ������ protected�� �ʿ��մϴ�.*/
			
			
			
			customerGrade="VIP";	
			bonusRatio=0.05;
			saleRatio=0.1;
			
			//����Ŭ������ ������ �� �ܼ���¹��� �ۼ��մϴ�. 
			System.out.println("VIPCustomer() �����ڸ� ȣ���մϴ�.");
			
		}
		
		
		
		
		//�Ű� ������ �ִ� �����ڸ� �����մϴ�.
		
		//��������� ����Ŭ���� �����ڸ� ȣ���մϴ�.
		public  VIPCustomer(int customerID, String customerName, int agentID) {
			
			super(customerID, customerName);
			
			customerGrade="VIP";	
			bonusRatio=0.05;
			saleRatio=0.1;
			this.agentID=agentID;
			
			
			//���� Ŭ������ ������ �� �ܼ� ��¹��� �ۼ��մϴ�. 
			System.out.println("VIPCustomer(int,String, int) �����ڸ� ȣ���մϴ�.");
			
			
		}
		
	
		
		/*VIP ������ �����ϴ� ������ �������� ���� ������ ��� �������� ���� ���� �ʾҴٴ� ������ �߻��մϴ�.*/
		/*���� ���̵� ����� �ʿ��մϴ�.*/
		
		
		@Override
		public int calcPrice(int price) {
			// TODO Auto-generated method stub
			//���ʽ� ����Ʈ ����
			bonusPoint += price*bonusRatio;
			
			//���ε� ������ ����Ͽ� ��ȯ
			return price -(int)(price*bonusRatio);
		}
		
		
		//���� Ŭ������ showCustomerInfo() �޼��带 �����Ͽ� ��� ������ ���̵� �߰��� ����մϴ�.
		
		public String showVIPinfor() {
			
			return super.showCustomerInfo()+"��� ������ ���̵��"+agentID+"�Դϴ�.";
			
		}
		
		
		
		
		
	




		//VIP �����Ը� �ʿ��� �޼���
		//VIP ���� ��ü�� ������ get�� ����Ѵ�.
		public int getAgentId() {
			
			return agentID;
			
		}
		
		
}

//��Ű���̸��� polymorphismTest�Դϴ�.
package polymorphismTest;

//VIPCustomer Ŭ������ �����մϴ�.
////VIPCustomer Ŭ������ Customer Ŭ������ ��� �޽��ϴ�.
public class VIPCustomer extends Customer {
	
	
	//VIP ������ ����� ������ ���� �ʿ����ʵ�(�������)�� �����մϴ�.
	
	private int agentID;		//vip �� ��� �������̵�
	double saleRatio;			//������
	
	//�Ű� ������ �ִ� �����ڸ� �����մϴ�.
	public VIPCustomer(int customerID, String customerName, int agentID) {
		
		//��������� ����Ŭ���� �����ڸ� ȣ���մϴ�.
		
		super(customerID, customerName);
		this.agentID=agentID;	//��� ���� ���̵�
		customerGrade="VIP"; 	//����� vIP
		bonusRatio =0.05;		//���ʽ� ���� 5%
		saleRatio=0.1;			//������ 10%
		
		
	}
	
	
	//���� ���� �޼��带 ������ �մϴ�.
	
	public int calcPrice(int price) {
		
		bonusPoint +=price*bonusRatio;
		
		
		return price-(int)(price*saleRatio); 
		
	}
	
	//���� Ŭ������ showCustomerInfo() �޼��带 ������ ��� ������ ���̵� �߰��� ����մϴ�.
	//�� ���� ����ϴ� �޼��带 �������մϴ�.
	public String showVIPInfo() {
		
		return super.showCustomerInfo()+"��� ���� ���̵��"+agentID+"�Դϴ�.";
	}
	//VIP �����Ը� �ʿ��� �޼���
	
	public int getAgentID() {
		
		
		return agentID;
	}
	
	
	

}

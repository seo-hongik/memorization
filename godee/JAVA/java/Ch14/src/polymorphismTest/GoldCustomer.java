//package�̸��� polymorphismTest�Դϴ�.
package polymorphismTest;
//class�� GoldCustomer�Դϴ�.
//GoldCustomer�� Customer �� ��� �޽��ϴ�.
public class GoldCustomer extends Customer {
	
	//Gold �� ���� ����� ������ ���� �ʿ��� �ʵ�(��� ����)�� �����մϴ�. ���ʽ� ����Ʈ , ������
	
	double saleRatio;
	
	//�Ű� ������ �ִ� �����ڸ� �����մϴ�.
	GoldCustomer(int customerID, String customerName){
		//��������� ����Ŭ���� �����ڸ� ȣ���մϴ�.
		super(customerID, customerName);
		
		customerGrade="GOLD";
		bonusRatio=0.02;
		saleRatio=0.1;
	}
	
	//���� ��� �޼��� ������
	
	public int calcPrice(int price) {
		
		//���ʽ� ����Ʈ �����մϴ�.
		bonusPoint += price*bonusRatio;
		
		
		
		//���ε� ������ ����Ͽ� ��ȯ�մϴ�.
		
		return price-(int)(price*saleRatio);
		
		
		
		
	}
	
	
	
	
	
	
	
	
	

}

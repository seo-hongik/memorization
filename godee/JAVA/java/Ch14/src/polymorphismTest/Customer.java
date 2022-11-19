//��Ű���̸��� polymorphismTest�Դϴ�.
package polymorphismTest;


//Ŭ���� �̸��� Customer �Դϴ�.
public class Customer {
	
	//�ʵ�(��� ������)�����մϴ�.
	
	protected int customerID; 			//�����̵�
	protected String customerName;		//���̸�
	protected String customerGrade;		//�����
	int bonusPoint;						//���ʽ� ����
	double bonusRatio;					//��������

	//����Ʈ ������
	
	public Customer() {
		
		//�� ��ް� ���ʽ� ����Ʈ �������� �����ϴ� �޼��� ȣ��
		initCustomer();
		
	}
	
	//�Ű������� �ִ� ������
	
	public Customer(int customerID,String customerName) {
		
		
		this.customerID = customerID;
		this.customerName= customerName;
		initCustomer();

		
		
	}
	
	//����ް� ���ʽ� ����Ʈ�� �������� �����ϴ� �޼ҵ�
	private void initCustomer() {
		
		customerGrade ="SILVER";
		bonusRatio=0.01;
		
		
		
	}
	//�޼��� (��� �Լ�)�� �����մϴ�.
	//���ʽ� ����Ʈ ����, �ں� ���� ����ϴ� �޼���
	
	public int calcPrice(int price) {
		
		bonusPoint += price*bonusRatio;
		
		
		
		return price;
	
	
		
	}
	
	
	//�� ������ ��ȯ�ϴ� �޼���
	
	public String showCustomerInfo() {
		
		return customerName+"���� �����"+ customerGrade+"�̸�"+"���ʽ�����Ʈ��"+bonusPoint+"���Դϴ�.";		
	}

	
	
	//protected ������ ������ ������ �ܺο��� ����� �� �ֵ��� get() set()�޼��带 �߰��մϴ�.
	

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerGrade() {
		return customerGrade;
	}

	public void setCustomerGrade(String customerGrade) {
		this.customerGrade = customerGrade;
	}



}

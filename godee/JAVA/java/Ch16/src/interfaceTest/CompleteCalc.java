//��Ű�� �̸��� interfaceTest �Դϴ�.
package interfaceTest;

//CompleteCalc Ŭ������ �����մϴ�.
//CompleteCalc Ŭ������  Calculator Ŭ������ ��ӹ޽��ϴ�.
//The type CompleteCalc must implement the inherited abstract method Calc.times(int, int)
//������ �߻��մϴ�.
public class CompleteCalc extends Calculator {


	//����Ʈ �޼��� description()��  CompleteCalc Ŭ�������� ���ϴ� ������� �������մϴ�.
	@Override
	public void description() {
		// TODO Auto-generated method stub
		super.description();
	}
	
	@Override
	public int times(int num1, int num2) {
		// TODO Auto-generated method stub
		return num1*num2;
	}

	@Override
	public int divide(int num1, int num2) {
		// TODO Auto-generated method stub
		if(num2!=0) {
			return num1/num2;
		}else {
			return Calc.ERROR;//num2�� -0,�� ������ ���� 0�ΰ�쿡 ���� ������ ��ȯ�մϴ�. 
		}
	}
	
	//CompeleteCalc���� �߰��� ������ �޼��带 �����մϴ�.
	public void showInfo() {
		System.out.println("Calc �������̽��� ���� �մϴ�.");
		
	}


}
